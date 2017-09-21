[ -z "$INTERNET_CONNECTION" ] && exit 0

# Install GPG key
command curl -sSL https://rvm.io/mpapis.asc | gpg --import -

# Install RVM
curl -sSL https://get.rvm.io | bash -s stable

# Install latest ruby and set as default
[ -f ~/.rvm/scripts/rvm ] && source ~/.rvm/scripts/rvm # user install
[ -f /etc/profile.d/rvm.sh ] && source /etc/profile.d/rvm.sh # root install
rvm install ruby
rvm alias create default ruby
