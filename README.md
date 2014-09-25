## Building the Library

### Specify libopus and iOS SDK Version
1. `$ git clone git@github.com:OnBeep/Opus-iOS.git`
2. `$ vim build-libopus.sh` Ensure the VERSION, SDKVERSION and MINIOSVERSION variables are set to the desired environment.

### Build the Static Library
1. `$ bash build-libopus.sh`

You should see the static library and header files in `dependencies/`.

## Updating the CocoaPod
If the static library has changed, you'll want to push those changes to the team via CocoaPods.

1. `$ vim Opus-ios.podspec` Bump `s.version` and the `s.source` tag
2. Commit and push the changes to Develop and Master branches. 
3. Create and push a tag to the bumped version in step 1.

### FAQ

Q. I successfully updated the CocoaPod but my team gets an error when they `$ pod install`. 

Try blowing away `Pods/` with `$ rm -rf Pods/` before running `$ pod install`.
