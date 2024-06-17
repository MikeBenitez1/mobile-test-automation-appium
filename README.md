# mobile-test-automation-appium
## Personal project to practice mobile test automation with Appium, Cucumber and Ruby creating a framework from scratch including POM pattern, structure definition, best practices, etc for iOS and Android SauceLabs example apps https://github.com/saucelabs/my-demo-app-android and https://github.com/saucelabs/my-demo-app-ios.

![video (4)](https://github.com/MikeBenitez1/mobile-test-automation-appium/assets/59778782/bcdb8ce0-8e7f-439d-aff4-1a1c893d7bf0)

## Table of Contents

1. [Requirements](#requirements)
2. [Getting Started](#getting-started)
3. [Tests Execution](#tests-execution)
4. [CI/CD](#cicd)
5. [Authors](#authors)

## Requirements

- Ruby >3.3.1
- Cucumber >6.0.0
- Appium >2.0.1
- An Android/iOS device (Can be a real device, simulator or emulator)
- IPA/APK build from https://github.com/saucelabs/my-demo-app-android or https://github.com/saucelabs/my-demo-app-ios in project root folder

## Getting Started

### Install these dependencies to collaborate, run or add automation scripts (this can be used on Windows and Mac OS)

* Install rbenv and ruby 3.3.1 following https://collectionbuilder.github.io/cb-docs/docs/software/ruby_mac/.

* Install the Android SDK (latest version https://developer.android.com/studio#downloads) and set up ANDROID_HOME on your .zshrc or .bash_profile depending your shell.

* Install Xcode (latest version https://developer.apple.com/xcode/ ).

* Install the JDK (latest version https://www.oracle.com/java/technologies/javase-jdk8-downloads.html) and set up JAVA_HOME on your .zshrc or .bash_profile depending your shell.

* Install Homebrew with `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`.

* Install nodeJS with `brew install node`.

* Install Appium server (recommended version 2.0.1) on terminal with `npm install -g appium@2.0.1`.

* Install Appium drivers on terminal with  `appium driver install xcuitest` and `appium driver install uiautomator2`.

* Install the gem bundle and ruby gems with terminal inside the repository with `gem install bundler` > `bundle install`.

* Finally install Appium Doctor on terminal with `npm install @appium/doctor@2.0.1 -g`.

* To validate if all the previous setup are well configured to start to use Appium just run `appium-doctor`.

* To setup an iOS real device please refer to https://appium.readthedocs.io/en/latest/en/drivers/ios-xcuitest-real-devices/.

* (Optional) To inspect UI elements you can download Appium Inspector from https://github.com/appium/appium-inspector/releases.


### Select/Setup a local environment file

* If you want to handle more sensitive data on the project you can add a `./config/keys.env` file and call them from `./config/config.yaml.config` file, to load the keys file from terminal just type
```
export KEYS=keys
```

* To select where to run the TCs, on terminal just select OS platform, OS version and Device farm with below commands e.g
```
export PLATFORM=IOS && export DEVICE_FARM=inhouse && export OS_VERSION=16
```

## Tests Execution

The following tasks can be triggered manually locally but can be integrated to a pipeline to run automatically.

* To run the test by scenario name use the following command:
```
cucumber -n "scenario_name
```

* To run the test by tag name use the following command:
```
cucumber -t "scenarios_tag_name"
```

## CI/CD

- WIP 

## Authors

If you need the full list use the following command:
```sh
git shortlog --summary --numbered
```
