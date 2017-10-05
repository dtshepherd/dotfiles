# Linux-specific installs, since I can't use Linuxbrew...

test "$(uname)" != "Linux" && return

if [ -f "/etc/redhat-release" ]
then
    sudo yum groupinstall -y "Development Tools"
    sudo yum install -y \
        kernel \
        kernel-headers \
        kernel-devel \
        ruby \
        ruby-devel \
        perl-ExtUtils-Embed \
        python \
        python-devel \
        gtk+-devel \
        gtk2-devel \
        gpm \
        gpm-devel \
        ncurses-devel
elif [ -f "/etc/debian_version" ]
then
    sudo apt-get install -y \
        build-essential \
        linux-headers-$(uname -r) \
        linux-headers-generic \
        libgpmg1-dev \
        libperl-dev \
        ruby2.3-dev
fi
