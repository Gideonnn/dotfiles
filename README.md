## Pre install

### SSH keys

```
# Generate two ssh keys, one for personal and one for work
# Use /Users/gideon/.ssh/id_rsa for personal
# Use /Users/gideon/.ssh/id_rsa_SOMETHING for work
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# Start the ssh-agent in the background
eval "$(ssh-agent -s)"

# Add private key to ssh-agent
ssh-add ~/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa_SOMETHING
```

### Github

```
# Copy the personal key to clipboard
pbcopy < ~/.ssh/id_rsa.pub
```

Go to [GitHub](https://github.com/settings/keys) and add the key to SSH keys

### Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Oh-my-zsh

Install Oh-My-Zsh by running this command:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
```

### Dotfiles

```
# Clone this repo
git clone git@github.com:Gideonnn/dotfiles.git ~/git/dotfiles

# Run install.sh in root dir
source install.sh
```

## Post install

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

### Visual Studio Code

#### Plugins

- Prettier

#### Settings

settings.json

```
{
    "editor.fontFamily": "'Source Code Pro', Menlo, Monaco, 'Courier New', monospace",
    "editor.formatOnSave": true,
    "editor.minimap.enabled": false,
    "explorer.confirmDelete": false,
    "editor.renderWhitespace": "boundary",
    "explorer.openEditors.visible": 0,
    "editor.codeLens": false,
    "workbench.editor.highlightModifiedTabs": true
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

Open Systeemvoorkeuren > Geavanceerd en onder 'Zorg dat mappen bovenaan staan:' check 'In vensters bij sorteren op naam'.

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
