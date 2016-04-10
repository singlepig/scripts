# add extra path to PATH

# set current_dir=`pwd`
## for android studio
export ANDROID_SDK_PATH="`echo ~`/Library/Android/sdk"
export PATH="$PATH:$ANDROID_SDK_PATH/build-tools:$ANDROID_SDK_PATH/platform-tools:$ANDROID_SDK_PATH/tools"

## for tools dir
export PATH="$PATH:`pwd`/tools"
