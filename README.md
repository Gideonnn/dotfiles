# Installing macOS for development

## XCode Command Line Tools

Open a terminal and run the following command:

```bash
xcode-select --install
```

## Clone this repo

```bash
git clone git@github.com:Gideonnn/dotfiles.git ~/git/dotfiles
```

## Homebrew

Install Homebrew by running this command:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Oh-my-zsh

Install Oh-My-Zsh:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## SSH keys

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

Start the ssh-agent in the background

```
eval "$(ssh-agent -s)"
```

Add private key to ssh-agent

```
ssh-add ~/.ssh/id_rsa
```

Copy the personal key to clipboard:

```
pbcopy < ~/.ssh/id_rsa.pub
```

Go to [GitHub](https://github.com/settings/keys) and add the key to SSH keys

## Configure

Run the following command to install all the things:

```
source install.sh
```

## Post `install.sh`

### Finder settings

Open finder settings and change the following:
Algemeen:

- Toon in nieuwe Finder-vensters: gideon (home folder)

Navigatiekolom order:

- AirDrop
- Apps
- Documenten
- Downloads
- Bureablad
- gideon
- git

### Git config

Check out these files and edit them accordingly:

```
.ssh-config
.gitconfig-work
```

### iTerm

#### Text navigation hotkeys

Settings -> Profile -> Keys

" ⌘ + ← " - Jump to beginning of line - Send hex code: 0x01
" ⌘ + → " - Jump to end of line - Send hex code: 0x05
" ⌥ + ← " - Travel back a word - Send text with Vim characters: \033b
" ⌥ + → " - Travel forward a word - Send text with Vim characters: \033f
" ⌥ + del " - Delete a word - Send hex code: 0x1B 0x08 (of 0x17)
" ⌘ + del " - Delete line - Send hex code: 0x15

#### Enable minimal appearance

Preferences > Appearance > Theme: Minimal

#### Color theme

Install [this](https://raw.githubusercontent.com/sindresorhus/iterm2-snazzy/master/Snazzy.itermcolors) color theme.

#### Transparancy

Preferences > Profiles Tab > Window Tab > Transparency: 15%ish
Preferences > Profiles Tab > Window Tab > Blur: Checked, veul

#### Annoying quit message

Preferences > General > Closing: uncheck confirm 'Quit iTerm' command

#### Reuse directory when creating new tabs

Preferences > Profiles > Working directory: Reuse previous sessions's directory

#### TouchID for sudo

```
$ sudo vim /etc/pam.d/sudo
```

Add `auth       sufficient     pam_tid.so` on top of the list.

Go to iTerm > Preferences > Advanced: Allow sessions to survive logging out and back in: No

Note: Recent MacOS updates may remove the entry. If TouchID stops working for sudo then check if the entry was removed and add it back in, following these instructions again.

### Visual Studio Code

#### Plugins

- Prettier

#### Settings

settings.json

```
{
  "editor.fontFamily": "'Source Code Pro', Menlo, Monaco, 'Courier New', monospace",
  "editor.minimap.enabled": false,
  "editor.renderWhitespace": "boundary",
  "editor.tabSize": 2,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.formatOnSave": true,
  "editor.codeActionsOnSave": {
    "source.fixAll": true
  },
  // "prettier.configPath": "~/git/dotfiles/templates/.prettierrc",
  "explorer.confirmDelete": false,
  "explorer.confirmDragAndDrop": false,
  "explorer.openEditors.visible": 0,
  "gitlens.codeLens.enabled": false,
  "gitlens.hovers.currentLine.enabled": false,
  "debug.javascript.codelens.npmScripts": "never",
  "workbench.editor.highlightModifiedTabs": true,
  "github.copilot.enable": {
    "*": true,
    "yaml": true,
    "plaintext": false,
    "markdown": true,
    "typescript": true,
    "typescriptreact": true
  },
  "editor.inlineSuggest.enabled": true,
  "typescript.updateImportsOnFileMove.enabled": "always",
  "security.workspace.trust.untrustedFiles": "open",
  "javascript.updateImportsOnFileMove.enabled": "always",
  "workbench.startupEditor": "none",
  "window.zoomLevel": 1
}

```

keybindings.json

```
// Place your key bindings in this file to override the defaultsauto[]
[
    {
        "key": "cmd+1",
        "command": "workbench.action.openEditorAtIndex1"
    },
    {
        "key": "ctrl+1",
        "command": "-workbench.action.openEditorAtIndex1"
    },
    {
        "key": "cmd+2",
        "command": "workbench.action.openEditorAtIndex2"
    },
    {
        "key": "ctrl+2",
        "command": "-workbench.action.openEditorAtIndex2"
    },
    {
        "key": "cmd+3",
        "command": "workbench.action.openEditorAtIndex3"
    },
    {
        "key": "ctrl+3",
        "command": "-workbench.action.openEditorAtIndex3"
    },
    {
        "key": "cmd+4",
        "command": "workbench.action.openEditorAtIndex4"
    },
    {
        "key": "ctrl+4",
        "command": "-workbench.action.openEditorAtIndex4"
    },
    {
        "key": "cmd+5",
        "command": "workbench.action.openEditorAtIndex5"
    },
    {
        "key": "ctrl+5",
        "command": "-workbench.action.openEditorAtIndex5"
    },
    {
        "key": "cmd+6",
        "command": "workbench.action.openEditorAtIndex6"
    },
    {
        "key": "ctrl+6",
        "command": "-workbench.action.openEditorAtIndex6"
    },
    {
        "key": "cmd+7",
        "command": "workbench.action.openEditorAtIndex7"
    },
    {
        "key": "ctrl+7",
        "command": "-workbench.action.openEditorAtIndex7"
    },
    {
        "key": "cmd+8",
        "command": "workbench.action.openEditorAtIndex8"
    },
    {
        "key": "ctrl+8",
        "command": "-workbench.action.openEditorAtIndex8"
    },
    {
        "key": "cmd+9",
        "command": "workbench.action.openEditorAtIndex9"
    },
    {
        "key": "ctrl+9",
        "command": "-workbench.action.openEditorAtIndex9"
    },
    {
        "key": "cmd+r",
        "command": "editor.action.rename",
        "when": "editorHasRenameProvider && editorTextFocus && !editorReadonly"
    },
    {
        "key": "f2",
        "command": "-editor.action.rename",
        "when": "editorHasRenameProvider && editorTextFocus && !editorReadonly"
    },
    {
        "key": "cmd+r",
        "command": "renameFile",
        "when": "explorerViewletVisible && filesExplorerFocus && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
    },
    {
        "key": "enter",
        "command": "-renameFile",
        "when": "explorerViewletVisible && filesExplorerFocus && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
    }
]
```

### Alfred

1. Go to Systeemvoorkeuren > Spotlight > Toetsencombinaties and uncheck cmd + space to open Spotlight.
2. Open Alfred and set 'Alfred Hotkey' to cmd + space.
3. Set 'Where are you' to Netherlands

If apps can not be found, run these commands and then rebuild index metadata (alfred advanced preferences):
$ sudo mdutil -a -i off
$ sudo mdutil -a -i on

### Beveiliging en privacy

Open Systeemvoorkeuren > Beveiliging en privacy > Algemeen: Vraag 'meteen' om wachtwoord.

### Control Strip

Open Systeemvoorkeuren > Toetsenbord > Pas Control Strip aan ...: Play/pause, Helderheid, Volume, Niet storen

### Finder

Finder > Voorkeuren > Algemeen > Toon in nieuwe finder-vensters: 'gideon'.
Finder > Voorkeuren > Tags: Uncheck all.
Finder > Voorkeuren > Geavanceerd > Zorg dat mappen bovenaan staan: 'In vensters bij sorteren op naam'.
Finder > Voorkeuren > Geavanceerd > Bij het uitvoeren van een zoekopdracht: 'Zoek in huidige map'.

### Notificaties

Open Systeemvoorkeuren > Berichtgeving > Berichten/Telegram/Whatsapp: selecteer bij 'Toon voorvertoning' de optie 'nooit'.

- Berichten
- Telegram
- Whatsapp

### Toetsenbord

Open Systeemvoorkeuren > Toetsenbord > Tekst: zet 'Corrigeer spelling' en 'Automatische hoofdletters' uit
Open Systeemvoorkeuren > Toetsenbord > Tekst: zet 'Gebruik slimme aanhaalingsteken en streepjes'
Open Systeemvoorkeuren > Toetsenbord > Speciale toetsen and remap Caps-Lock to Escape.
Open Systeemvoorkeuren > Toetsenbord > Toetscombinaties > Toegankelijkheid: bind 'Keer kleuren om' to cmd + q

### Taalvoorkeuren

Open Systeemvoorkeuren > Taal en regio > Voorkeurstalen: voeg Dvorak toe.

### Spaces

Open Systeemvoorkeuren > Mission Control: uncheck 'Orden spaces automatisch'
