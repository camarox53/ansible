# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi


## move over terminal configs from cloudhome
if [ -d ~/.gconf ]; then
    rm -rf ~/.gconf
fi
ln -s /cloudhome/${USER}/.gconf ~/

GIT=`git --version`
if [ $? -eq 0 ]; then
    git config --global user.email "cumorris@mail.wvu.edu"
    git config --global user.name "cumorris"
fi
