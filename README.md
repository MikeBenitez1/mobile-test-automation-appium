# mobile-test-automation-appium
## Personal project to practice mobile test automation with Appium, Cucumber and Ruby creating a framework from scratch including POM pattern, architecture definition/solutions, best practices, etc for iOS and Android SauceLabs example apps https://github.com/saucelabs/sample-app-mobile.

![execution](https://user-images.githubusercontent.com/59778782/159393006-f90f5837-3a8b-4adc-9732-9d66b110e7ef.gif)

## Table of Contents

1. [Requirements](#requirements)
2. [Getting Started](#getting-started)
3. [Tests Execution](#tests-execution)
4. [CI/CD](#cicd)
5. [Authors](#authors)

## Requirements

- Ruby >3.0.1
- Cucumber >6.0.0
- Appium >2.0.1
- An Android/iOS device (Can be a real device, simulator or emulator)
- IPA/APK build from https://github.com/saucelabs/sample-app-mobile in root folder project

## Getting Started

### Install dependencies to collaborate and add automation scripts (this can be used on Windows and Mac OS)

* Install rvm with `\curl -sSL https://get.rvm.io | bash -s stable`.

* Install Ruby (3.0.1) on terminal with `rvm install "ruby-3.0.1"`.

* Install the Android SDK (latest version https://developer.android.com/studio#downloads) and set up `export ANDROID_HOME=/Users/{YOUR_USER_NAME}/Library/Android/sdk` and `export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools` on your .zshrc or .bash_profile depending your shell.

* Install Xcode (latest version https://developer.apple.com/xcode/ )

* Install the JDK (latest version https://www.oracle.com/java/technologies/javase-jdk8-downloads.html) and set up JAVA_HOME on your .zshrc or .bash_profile depending your shell.

* Install Homebrew with `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

* Install nodeJS with `brew install node`.

* Install Appium server (recommended version 2.0.1) on terminal with `npm install -g appium@2.0.1`.

* Install Appium drivers on terminal with  `appium driver install xcuitest` and `appium driver install uiautomator2`.

* Install the gem bundle and ruby gems with terminal inside the repository with `gem install bundler` > `bundle install`.

* Finally install Appium Doctor on terminal with `npm install @appium/doctor@2.0.1 -g` this tool will validate if all the previous setup are well configured to start to use Appium, once appium-doctor is installed on terminal just run `appium-doctor`.

* To setup an iOS real device please refer to https://github.com/appium/appium-xcuitest-driver/blob/master/docs/real-device-config.md

### Install dependencies just to run the test cases locally (this can be used on Windows and Mac OS)

* Install rvm with `\curl -sSL https://get.rvm.io | bash -s stable`.

* Install Ruby (3.0.1) on terminal with `rvm install "ruby-3.0.1"`.

* Install Homebrew with `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

* Install nodeJS with `brew install node`.

* Install Appium server (recommended version 2.0.1) on terminal with `npm install -g appium@2.0.1`.

* Install Appium drivers on terminal with  `appium driver install xcuitest` and `appium driver install uiautomator2`.

* Install the gem bundle and ruby gems with terminal inside the repository with `gem install bundler` > `bundle install`.

* Finally install Appium Doctor on terminal with `npm install @appium/doctor@2.0.1 -g` this tool will validate if all the previous setup are well configured to start to use Appium, once appium-doctor is installed on terminal just run `appium-doctor`.

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
