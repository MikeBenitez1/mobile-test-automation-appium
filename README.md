# mobile-test-automation-practice
#Personal framework to practice mobile test automation including patterns, solutions, examples, architecture, best practices, etc for iOS and Android.


##Below you can see the tools you need to install for the mobile automation framework included Appium, this can be used on Windows and Mac OS:

* Install Ruby (any version higher than 2.3) from terminal with "rvm install ruby".

* Install the Android SDK (latest version https://developer.android.com/studio#downloads) and set up ANDROID_HOME on your .zshrc or .bash_profile depending your shell.

* Install the JDK (latest version https://www.oracle.com/java/technologies/javase-jdk8-downloads.html) and set up JAVA_HOME on your .zshrc or .bash_profile depending your shell.

* Install Appium (latest version) from terminal with "npm install -g appium" to install it on console or install Appium Desktop App from https://github.com/appium/appium-desktop/releases/tag/v1.18.0-1 both works same, the only difference is that the desktop one has included the Appium Inspector tool.

* Install Appium client  from terminal with "npm install wd" or if you will import the Appium libraries in the repository, it is enough.

* Install Node.js (required for Appium doctor) from terminal with "brew install node".

* Install the gem bundle from terminal inside the repository with "gem install bundler" > "bundle install".

* Finally install Appium Doctor from terminal with "npm install appium-doctor -g" this tool will validate if all the previous setup are well configured to start to use appium, from terminal just run "appium-doctor".

