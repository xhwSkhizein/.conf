# ALIAS COMMANDS
alias ls='ls -G'
alias la='ls -aG'
alias ll='ls -lG'
CLICOLOR=1
LSCOLORS=gxfxaxdxcxegedabagacad
LS_COLORS=$LS_COLORS:'di=0;37:' ; export LS_COLORS

# $(__git_ps1) - add project current git branch to PS1. *note* [alread copy /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh to ~/script/]
source ~/script/git-prompt.sh
source ~/script/git-completion.bash
GREEN="\[$(tput setaf 120)\]"
RESET="\[$(tput sgr0)\]"
export PS1="\u:\[\e[33;11m\]\w${GREEN}\$(__git_ps1)${RESET} \[\e[0m\]$ "
#export PS1="[\[\033[32m\]\w]\[\033[0m\]\$(__git_ps1)\n\[\033[1;36m\]\u\[\033[32m\]$ \[\\033[0m\]"

alias rm='rm -i'

# history length
HISTFILESIZE=10000

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#####################################################################################

## LANGUAGE ##
# Java  [real_path: /Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home/]
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk/Contents/Home"
# Scala [real_path: /opt/install/scala-2.12.6]
export SCALA_HOME="/opt/scala"
# Haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"


## ##
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PATH=/opt/flutter/bin:$PATH

## TOOLS ##
# Maven [real_path: /opt/install/apache-maven-3.5.0/]
export MAVEN_HOME=/opt/maven
# Gradle [real_path: /opt/install/gradle-4.7/]
export GRADLE_HOME=/opt/gradle

# tensorflow gpu deps, cuda lib path
export LD_LIBRARY_PATH=/usr/local/cuda/lib:$LD_LIBRARY_PATH

# some script, deploy, complier, ssh2server...etc
export SCRIPT_HOME=/Users/hongweixu/script:/Users/hongweixu/workspace/aloha-proj/cu-core/script:/opt/kafka/bin:/opt/zookeeper/bin

export GOPATH=$HOME/workspace/go-proj
export GOBIN=$HOME/workspace/go-proj/bin

export PATH=$JAVA_HOME/bin:$SCALA_HOME/bin:$MAVEN_HOME/bin:$GRADLE_HOME/bin:$SCRIPT_HOME:$GOBIN:$PATH

# added by Anaconda3 4.4.0 installer
export PATH="/opt/install/anaconda/anaconda/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
