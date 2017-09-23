# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

[ -z "$INTERNET_CONNECTION" ] && exit 0

# Check for Homebrew
if ! command brew > /dev/null 2>&1
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    if [ -f "/etc/redhat-release" ]
    then
      sudo yum install -y ruby
    elif [ -f "/etc/debian_version" ]
    then
        sudo apt-get install -y ruby
    fi
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
    export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH" # add Linuxbrew to PATH so we can use immediately
  fi

fi

exit 0
