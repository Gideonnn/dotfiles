# Installing macOS for development

## Backup old stuff first

### Copy to backup folder
```bash
cp ~/.zsh_history ~/backup/.zsh_history
cp ~/.bash_history ~/backup/.bash_history
cp -r ~/.ssh ~/backup/.ssh
```

### Restore from backup folder
```bash
cp ~/backup/.zsh_history ~/.zsh_history
cp ~/backup/.bash_history ~/.bash_history
cp -r ~/backup/.ssh ~/.ssh
```

### Set proper permissions
```bash
chmod 600 ~/.zsh_history
chmod 600 ~/.bash_history
chmod 600 ~/.ssh/id_ed25519
chmod 644 ~/.ssh/id_ed25519.pub
```

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

## Claude Code

Install Claude Code:

```
curl -fsSL https://claude.ai/install.sh | bash
```

## SSH keys

```
ssh-keygen -t ed25519 -C "your_email@example.com"
```

Start the ssh-agent in the background

```
eval "$(ssh-agent -s)"
```

Add private key to ssh-agent

```
ssh-add ~/.ssh/id_ed25519
```

Copy the personal key to clipboard:

```
pbcopy < ~/.ssh/id_ed25519.pub
```

Go to [GitHub](https://github.com/settings/keys) and add the key to SSH keys

## Configure

Run the following command to install all the things:

```
source install.sh
```

## Post `install.sh`

### Git config

Check out these files and edit them accordingly:

```
.ssh-config
.gitconfig-work
```

## Systeminstellingen

### Algemeen

'Vul automatisch in' en wachtwoorden > Vul automatisch in: uit
Configureer codes in > Bitwarden

### Achtergrond

Gebruikt Moneterey wallpaper met dark mode

### Bureaublad en Dock

Bureaublad en Stage manager > 'Klik op achtergrond on bureaublad te tonen': 'Alleen in Stage Manager'
Mission Control > Zet 'Orden spaces automatisch op basis van meest recent gebruik' uit

### Menubalk

Spotlight > uit

### Weergave

Weergave > Donker
Liquid Glass > Getint
Thema > Antractiet

### Meldingen

Berichten > Toon voorvertoning: Nooit
Telegram > Toon voorvertoning: Nooit
Whatsapp > Sta meldingen toe: Uit

### Geluid

Speel geluid af bij opstarten: uit

### Toegangsscherm

Schakel beeldscherm uit bij gebruik van batterij: Nooit
Schakel beeldscherm uit bij gebruik van lichtnetadapter: Nooit
Vraag om wachtwoord na: Meteen

### Privacy en beveiliging

Filevault: Aan

### Touch ID en wachtwoord

Wachtwoordopties > Vul wachtwoorden en passkeys automatisch in: uit
Apple Watch gebruiken om te ontgrendelen: aan

### Internetaccounts

Toevoegen van fastmail account:
- Log in via Fastmail web > Settings > Privacy en beveiliging > Verbonden apps > Nieuw app-wachtwoord
- Email, Contacten & Agenda's > Wachtwoord genereren
- Click 'Open dit configuratiebestand' en open het
- Ga naar Systeeminstellingen > Profiel gedownload > Installeer Fastmail profiel
- Ga naar Internetaccounts en voeg correcte beschrijvingen toe

### Toetsenbord

Toetsrepeteertemp: Snel
Repeteervertraging: Kort

Druk op globe toets: Doe niets

Toetscombinaties
Alles uit behalve:
 - Beeldscherm
 - Schermafbeeldingen
 - Toegankelijkheid > Keer kleuren om: cmd + q
Speciale toetsen > remap Caps-Lock naar Escape.

Tekstinvoer:
Invoerbronnen: Wijzig... > Nederlands
Nederlands > Wijzig...
- Toon invoermenu in menubalk: Uit
- Corrigeer spelling automatisch: Uit
- Voorzie woorden automatisch van hoofdletters: Uit
- Voeg punt toe via dubbele spatie: Uit
- Spelling: Automatisch op taal
- Gebruik slimme aanhaalingsteken en streepjes: Uit
- Voor dubbele aanhalingstekens: "
- Voor enkele aanhalingstekens: '

## App Settings

### Bitwarden

Open and log into Bitwarden

### Docker

Open Docker en log in met personal email

### Finder

Voorkeuren:

Algemeen > Toon in nieuwe Finder-vensters: 'gideon'.

Navigatiekolom
- AirDrop
- Apps
- Documenten
- Downloads
- Bureablad
- gideon
- git

Geavanceerd
Toon waarschuwing voor verwijderen vanaf iCloud Drive: uit
Zorg dat mappen bovenaan staan > 'In vensters bij sorteren op naam': aan
Bij het uitvoeren van een zoekopdracht > Zoek in huidige map

Volgorde navigatiekolom:
- iCloud Drive
- Airdrop
- Apps
- Bureablad
- Documenten
- Downloads
- Facturen
- gideon
- git

### Firefox

Open and log into Firefox to enable sync.

### Hyperkey

Remap physical key to hyper key: globe
Open on login: on
Check for updates automatically: on
Hide menu bar icon: on

### Raycast

Open Raycast and follow setup.

Log in via GitHub

AI > Disable

Extensions > disable:
- Browser
- Clipboard History
- Define word
- Developer
- MCP
- Navigation
- Quicklinks
- Raycast
- Raycast Focus
- Raycast Notes
- Raycast Settings
- Raycast for Teams
- Screenshots
- Shortcuts
- Snippets
- Start Typing Practise
- System
- System Settings
- Translate
- Window Management

### Visual Studio Code

Login VSCode om settings te synchroniseren.

Login via GitHub.

### Warp

AI:
Active AI > Prompt suggestions: uit
Active AI > Suggested code banners: uit
Active AI > Shared block title generation: uit
Input > Autodetect agent prompts in terminal input: uit
Input > Autodetect terminal input commands in agent input: uit
Input > Show input hint text: uit
Input > Show agent tips: uit

Code:
Codebase indexing: uit

Appearance:
Tabs > show code review button: uit

Features:
Terminal input > 

Zoek voor 'quick' > Global hotkey: Dicated hotkey window

Log in via GitHub

### Alt-Tab

Open Alt-Tab and follow the accessibility setup.

Systeminstellingen > Toetsenbord > Toetscombinaties > Toetsenboard > Focus op volgende venster: uit

Pas Sneltoets 1 en Sneltoets 2 aan naar cmd + tab en cmd + shift + tab.

Sneltoets 1: Roomt ramen uit spaces: Zichtbare spaces
Sneltoets 1: Toon verborgen ramen: Verberg
Sneltoets 2: Roomt ramen uit spaces: Zichtbare spaces
