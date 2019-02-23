#!/bin/sh

# This installs some of the common dependencies

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Install homebrew packages
brew install grc \
  coreutils \
  htop \
  unrar \
  hub \
  node \
  python \
  python3 \
  vim \
  postgresql \
  redis \
  yarn \
  go \
  cmake \
  elasticsearch \
  telnet \
  tmux \
  fzf \

exit 0
