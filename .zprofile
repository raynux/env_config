# For android SDK
export ANDROID_SDK="/Users/raynux/Documents/Development/adt-bundle-mac/sdk"
export PATH=$PATH:$HOME/Documents/Development/android-sdk-macosx
alias hax_android="$ANDROID_SDK/tools/emulator -avd titanium_3_HVGA_x86"

# Java
export JAVA_HOME="$(/usr/libexec/java_home)"

# EC2 tools
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

# Node.js
export NODE_PATH=/usr/local/lib/node_modules

# For PhoneGap
export PATH=$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:$PATH

# For Sencha Touch
export PATH=$PATH:/Users/raynux/Documents/Development/Sencha/Cmd/3.0.0.250
export PATH=$PATH:$HOME/.senchacmd/bin/Sencha/Cmd/3.0.0.250

# etc
export PATH=$PATH:/usr/local/sbin
