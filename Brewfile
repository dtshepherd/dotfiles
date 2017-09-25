module OS
  def self.mac?
   (/darwin/ =~ RUBY_PLATFORM) != nil
  end

  def self.linux?
    (/linux/ =~ RUBY_PLATFORM) != nil
  end
end

cask_args appdir: '/Applications' if OS.mac?

tap 'homebrew/bundle'
tap 'caskroom/drivers'

brew 'mas' if OS.mac?
brew 'coreutils'
brew 'bash-completion'
brew 'ack'
brew 'grc'
brew 'jq'
brew 'jp2a'
brew 'git'

brew 'openssl'
brew 'readline'
brew 'tmux'
brew 'screen'
brew 'wget'

brew 'node'
brew 'postgresql'

brew 'ruby'
brew 'ruby-build'
brew 'rbenv'
brew 'go'
brew 'python'
brew 'python3'

if OS.mac?
  cask 'dashlane'
  cask 'tunnelblick'
  cask 'teamviewer'
  cask 'google-chrome'
  cask 'google-backup-and-sync' # google-drive
  cask 'microsoft-office'
  cask 'slack'
  cask 'skype'
  cask 'evernote'
  cask 'dropbox'
  cask 'quik'
  cask 'xquartz'
  cask 'inkscape'

  cask 'airdisplay'
  cask 'airfoil'
  cask 'logitech-myharmony'

  cask 'osxfuse'
  cask 'insomniax'
  cask 'disk-inventory-x'
  cask 'crashplan'

  cask 'virtualbox'
  cask 'docker'
  cask 'macvim'
  cask 'atom'
  cask 'transmission'

  # macOS app store installs (mostly due to licenses)
  mas "1Password", id: 443987910
  mas "Apple Configurator 2", id: 1037126344
  mas "GarageBand", id: 682658836
  mas "HyperDock", id: 449830122
  mas "iMovie", id: 408981434
  mas "Keynote", id: 409183694
  mas "Numbers", id: 409203825
  mas "Pages", id: 409201541
  mas "PhotoSweeper", id: 463362050
  mas "Pocket", id: 568494494
  mas "Soulver", id: 413965349
  mas "The Unarchiver", id: 425424353
end

# other manual installs
#   canon printer/scanner drivers and software
#   encfs & encfsGUI
