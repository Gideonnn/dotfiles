# Shared helpers for the meet / meet-transcribe / meet-notes scripts.
# Sourced, never executed. Expects ${meet_bin} to be set by the caller.

# Load config from the first env file that exists. An OPENAI_API_KEY already
# exported in the shell always wins, so `OPENAI_API_KEY=sk-x meet` works.
meet_load_env() {
  local f pre="${OPENAI_API_KEY:-}"
  for f in "${MEET_ENV_FILE:-}" "${meet_bin}/.env" "${HOME}/.config/meet/env"; do
    [ -n "$f" ] && [ -f "$f" ] || continue
    set -a; . "$f"; set +a
    break
  done
  [ -n "$pre" ] && OPENAI_API_KEY="$pre"
  return 0
}

# The placeholder in .env.example is a valid-looking string, so OpenAI answers a
# 401 that reads like a revoked key rather than an unfinished setup. Catch it here.
meet_require_key() {
  local file="${MEET_ENV_FILE:-${meet_bin}/.env}"
  case "${OPENAI_API_KEY:-}" in
    "")
      echo "OPENAI_API_KEY is not set." >&2
      echo "  cp ${meet_bin}/.env.example ${file} && \$EDITOR ${file}" >&2
      exit 1 ;;
    sk-...*|sk-xxx*|your-key*)
      echo "OPENAI_API_KEY is still the placeholder from .env.example." >&2
      echo "  Paste a real key in ${file} (https://platform.openai.com/account/api-keys)" >&2
      exit 1 ;;
  esac
}

# Git repo root of the current directory, or empty when not inside one.
meet_repo_root() { git rev-parse --show-toplevel 2>/dev/null || true; }

# Where dated meeting folders are created. Precedence:
#   $MEET_DIR  >  <repo root>/meetings, if that folder already exists  >  ~/meetings
# The repo rule only fires on an existing folder, so a repo that has adopted the
# convention (colloport) keeps its meetings in-tree while every other directory
# falls through to ~/meetings without one appearing uninvited.
meet_default_dir() {
  local root
  if [ -n "${MEET_DIR:-}" ]; then printf '%s\n' "$MEET_DIR"; return; fi
  root="$(meet_repo_root)"
  if [ -n "$root" ] && [ -d "${root}/meetings" ]; then
    printf '%s\n' "${root}/meetings"; return
  fi
  printf '%s\n' "${HOME}/meetings"
}

# Repo the -t flag grants Claude read access to. Empty = no repo context.
meet_context_dir() {
  if [ -n "${MEET_CONTEXT_DIR:-}" ]; then printf '%s\n' "$MEET_CONTEXT_DIR"; return; fi
  meet_repo_root
}

# Byte size of a file. `wc -c` avoids stat, whose flags differ between the BSD
# stat in /usr/bin and the GNU stat that coreutils puts ahead of it on PATH.
meet_bytes() { printf '%s\n' "$(( $(wc -c < "$1") ))"; }

# Audio inputs avfoundation can see, as "  [n] Name".
# `-list_devices` always exits non-zero (it aborts after printing the list), so
# the `|| true` is load-bearing under `set -e` in the callers.
meet_audio_devices() {
  ffmpeg -hide_banner -f avfoundation -list_devices true -i "" 2>&1 \
    | sed -n '/AVFoundation audio devices:/,$p' \
    | sed -n 's/^.*\] \[\([0-9][0-9]*\)\] \(.*\)$/  [\1] \2/p' || true
}

# Fail early with the device list when the configured input does not exist --
# otherwise ffmpeg dies mid-recording with an unhelpful error.
meet_require_device() {
  local dev="$1" devices
  devices="$(meet_audio_devices)"
  if [ -z "$devices" ]; then
    echo "⚠  Could not read the avfoundation device list; recording anyway." >&2
    return 0
  fi
  if printf '%s\n' "$devices" | sed 's/^  \[[0-9]*\] //' | grep -Fqx "$dev"; then
    return 0
  fi
  echo "No audio input named \"${dev}\"." >&2
  echo >&2
  echo "Available inputs:" >&2
  printf '%s\n' "$devices" >&2
  echo >&2
  echo "Set MEET_DEVICE to one of these, or create the aggregate device (see README)." >&2
  exit 1
}
