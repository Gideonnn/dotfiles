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
pbcopy < ~/.ssh/id_rsa.pub
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

### Meldingen

Messages > Toon voorvertoning: Nooit
Telegram > Toon voorvertoning: Nooit
Whatsapp > Sta meldingen toe: Uit

### Geluid

Speel geluid af bij opstarten: uit

### Bedieningspaneel

Spotlight > Toon niet in menubalk

### Privacy en Beveiliging

Open Systeeminstellingen > Toegangsscherm > Schakel schermbeveiliging in: Nooit
Open Systeeminstellingen > Toegangsscherm > Vraag om wachtwoord na: Meteen

### Bureaublad en Dock

Bureaublad en Stage manager > 'Klik op achtergrond on bureaublad te tonen': 'Alleen in Stage Manager'
Mission Control > Zet 'Orden spaces automatisch op basis van meest recent gebruik' uit

### Achtergrond

Gebruikt Moneterey wallpaper met dark mode

### Wachtwoorden

Wachtwoordopties > Vul wachtwoorden en passkeys automatisch in: uit

### Internetaccounts

Toevoegen van fastmail account:
- Log in via Fastmail web > Settings > Password & Security > App Passwords > Add new app password
- Email, Contacten & Agenda's > Wachtwoord genereren
- Click 'Open dit configuratiebestand' en open het
- Ga naar Systeeminstellingen > Privacy en Beveiliging > Profielen > Installeer Fastmail profiel
- Ga naar Internetaccounts en voeg correcte beschrijvingen toe

### Toetsenbord

Invoerbronnen: Wijzig...
- Toon invoermenu in menubalk: Uit
- Corrigeer spelling automatisch: Uit
- Voorzie woorden automatisch van hoofdletters: Uit
- Voeg punt toe via dubbele spatie: Uit
- Spelling: Automatisch op taal
- Gebruik slimme aanhaalingsteken en streepjes: Uit

Toetscombinaties > Speciale toetsen: remap Caps-Lock naar Escape.
Toetscombinaties > Toegankelijkheid: bind 'Keer kleuren om' op cmd + q
Toetscombinaties > Zet zo veel mogelijk shortcuts uit

## App Settings

### Arc

Voeg Bitwarden extensie toe

Profiles > Search engine: DuckDuckGo
Profiles > Archive tabs after: 30 days
Advanced > More settings > Automatisch invullen en wachtwoorden > Wachtwoordmanager:
- Aanbieden om wachtwoorden op te slaan: uit
- Automatisch inloggen: uit

### Bitwarden

Open and log into Bitwarden

### Docker

Open Docker en log in met personal email

### Finder

Finder > Voorkeuren > Algemeen > Toon in nieuwe finder-vensters: 'gideon'.
Finder > Voorkeuren > Tags: Uncheck all.
Finder > Voorkeuren > Geavanceerd > Zorg dat mappen bovenaan staan: 'In vensters bij sorteren op naam'.
Finder > Voorkeuren > Geavanceerd > Bij het uitvoeren van een zoekopdracht: 'Zoek in huidige map'.

Navigatiekolom finder venster:

- AirDrop
- Apps
- Documenten
- Downloads
- Bureablad
- gideon
- git

### Firefox

Open and log into Firefox to enable sync.

### Hyperkey

Remap physical key to hyper key: right command.
Launch on login: on
Check for updates automatically: on
Hide menu bar icon: on

### Raycast

Open Raycast and follow setup import settings after.

Systeeminstellingen > Toetsenbord > Toetscombinaties > Spotlight > Toon Spotlight-zoekveld: Uit

Log in via GitHub

### Visual Studio Code

Login VSCode om settings te synchroniseren.

Login via GitHub.

### Warp

Appearance > Theme: Gruvbox Dark

Log in via GitHub
