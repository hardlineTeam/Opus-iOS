## Building the Library

#### Specify libopus and iOS SDK Version
1. `$ git clone git@github.com:OnBeep/Opus-iOS.git`
2. `$ vim build-libopus.sh` Ensure the VERSION, SDKVERSION and MINIOSVERSION variables are set to the desired environment.

iOS build scripts for the [Opus Codec](http://www.opus-codec.org).

## Usage

1. (Objective-C) [Build the static library](#building-the-static-library)
2. (Optionally for Swift) [Build the framework](#building-the-framework)
3. (Optionally) Use the [CocoaPod spec](/opus-ios.podspec)

## Building the Static Library

#### Step 1

Download the [latest stable tar file](http://opus-codec.org/downloads/) and place it into the `build/src` directory

Note: If it's a new version of opus or if the iOS SDKs changed since the last time you built it, update that version at the top of the `build-libopus.sh` file.

#### Step 2

From the command line, run:

```bash
$ ./build-libopus.sh
```

That will take the tar file and build the static library in a directory called `dependencies`

#### Step 3

Follow the steps above for building the framework from the static library


## Building the Framework

#### Step 1

Open the `opus/opus.xcodeproj` file, select `UniversalTarget` with a `Generic iOS Device`

#### Step 2

Build the framework by pressing Run; this will overwrite the framework in the repo root.

Note: this runs a custom build script within Build Phases that will build a universal framework with both simulator and device slices

If we have issues with submitting to the app store w/ the extra simulator slices, view this: http://arsenkin.com/ios-universal-framework.html / http://stackoverflow.com/a/30866648/308315

#### Step 3

Ensure the framework includes slices for both simulator and device architectures (x86_64 i386 armv7 armv7s arm64)

```bash
$ lipo -info opus.framework/opus
```

## License

MIT
