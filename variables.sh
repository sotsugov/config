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
