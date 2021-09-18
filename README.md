# mobile-test-automation-appium
## Personal project to practice mobile test automation with Appium, Cucumber and Ruby creating a framework from scratch including POM pattern, architecture definition/solutions, best practices, etc for iOS and Android SauceLabs example apps https://github.com/saucelabs/sample-app-mobile.


## Table of Contents

1. [Requirements](#requirements)
2. [Getting Started](#getting-started)
3. [Tests Execution](#tests-execution)
4. [CI/CD](#cicd)
5. [Authors](#authors)

## Requirements

- Ruby >3.0.1
- Cucumber >6.0.0
- Appium >1.21.0

## Getting Started

### Install dependencies to collaborate (this can be used on Windows and Mac OS)

* Install Ruby (any version higher than 3.0.1) from terminal with `rvm install ruby`.

* Install the Android SDK (latest version https://developer.android.com/studio#downloads) and set up ANDROID_HOME on your .zshrc or .bash_profile depending your shell.

* Install Xcode (latest version https://developer.apple.com/xcode/ )

* Install the JDK (latest version https://www.oracle.com/java/technologies/javase-jdk8-downloads.html) and set up JAVA_HOME on your .zshrc or .bash_profile depending your shell.

* Install Appium (latest version) from terminal with `npm install -g appium` to install the console version or install the last Appium Desktop App version from https://github.com/appium/appium-desktop/releases both works same, the only difference is that the desktop one has included the Appium Inspector tool.

* Install Appium client from terminal with `npm install wd` or if you will import the Appium libraries/gems in the repository, it is enough.

* Install Node.js (required for Appium doctor) from terminal with `brew install node`.

* Install the gem bundle from terminal inside the repository with `gem install bundler` > `bundle install`.

* Finally install Appium Doctor from terminal with `npm install appium-doctor -g` this tool will validate if all the previous setup are well configured to start to use Appium, from terminal just run `appium-doctor`.

### Install dependencies just to run the test cases locally (this can be used on Windows and Mac OS)

* Install Ruby (any version higher than 2.3) from terminal with `rvm install ruby`.

* Install Appium (latest version) from terminal with `npm install -g appium` to install the console version or install the last Appium Desktop App version from https://github.com/appium/appium-desktop/releases both works same, the only difference is that the desktop one has included the Appium Inspector tool.

* Install the gem bundle from terminal inside the repository with `gem install bundler` > `bundle install`.

### Configure the local environment file

* Regarding values from environment.env.default file ask for them to the repository owner, put them in ./config/keys.env and load from terminal with
```
export KEYS=keys
```

* To select where to run the TCs, on terminal just select OS, Version and Device farm with below commands e.g
```
export OS_VERSION=14
```
```
export PLATFORM=IOS
```
```
DEVICE_FARM=inhouse
```

## Tests Execution

The following tasks can be executed manually locally but are planned to be executed automatically in a pipeline.

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