export PATH=$PATH:/usr/local/sbin

# For Java
export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

# For Node
export NODE_PATH=/usr/local/lib/node_modules

# For Android Dev
export ANDROID_SDK="/Users/raynux/Documents/Development/adt-bundle-mac/sdk"
export PATH=$PATH:$HOME/Documents/Development/android-sdk-macosx
export PATH=$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:$PATH

# For Sencha Touch
export PATH=$PATH:/Users/raynux/Documents/Development/sencha-cmd/Sencha/Cmd/3.0.2.288
