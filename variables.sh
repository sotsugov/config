# Make vim the default editor.
export EDITOR='vim';

# Enable persistent REPL history for `node`.
NODE_REPL_HISTORY_FILE=~/.node_history;
# Allow 32³ entries; the default is 1000.
NODE_REPL_HISTORY_SIZE='32768';

# Increase Bash history size. Allow 32³ entries; the default is 500.
export HISTSIZE='32768';
export HISTFILESIZE="${HISTSIZE}";
# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL='ignoreboth';

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';

# Always enable colored `grep` output.
export GREP_OPTIONS='--color=auto';

# path
export PATH=~/bin:$PATH # allow my scripts to overwrite other bins
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/sbin
export PATH=$PATH:/opt/X11/bin

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

# C flags
export CFLAGS='-I/usr/local/opt/openssl/include'
export CPPFLAGS='-I/usr/local/opt/openssl/include'
export LDFLAGS='-L/usr/local/opt/openssl/lib'

# Add Java home
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/jre/bin:$PATH

# Stuff required for mysql connector
export MYSQLXPB_PROTOBUF_INCLUDE_DIR="/usr/local/opt/protobuf/include"
export MYSQLXPB_PROTOBUF_LIB_DIR="/usr/local/opt/protobuf/lib"
export MYSQLXPB_PROTOC="/usr/local/bin/protoc"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Defaults for CS/NODE
export NODE_ENV=local
