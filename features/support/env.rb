# When running cucumber in the console, ./features/support/env.rb is the first file that is loaded.
# It will load all the dependent gems.
require "dotenv"
require "require_all"
require "selenium-webdriver"
require "cucumber"
require "appium_lib"
require "appium_console"
require "test/unit/assertions"

require_all "./page_object"
require_all "./config"
require_all "./handlers"

# To use for the future integration with Browserstack
username = ""
access_key = ""

# To call these values from implicit timeouts on step definitions or pages
# SHORT_TIME_OUT = 2
# LONG_TIME_OUT = 10

ENV_FILE_PATH = "./config/#{ENV["DEVICE"]}.env"
Dotenv.load(ENV_FILE_PATH)

caps = {
    platformName: ENV["PLATFORM_NAME"],
    platformVersion: ENV["OS_VERSION"],
    deviceName: ENV["DEVICE_NAME"],
    app: ENV["APP_PATH"],
    automationName: ENV["AUTOMATION_NAME"],
    noReset: ENV["NO_RESET"] ,
    enforceAppInstall: ENV["ENFORCE_APP_INSTALL"],
    udid: ENV["UDID"],
    xcodeOrgId: ENV["XCODE_ORG_ID"],
    bundleId: ENV["BUNDLE_ID"],
    xcodeSigningId: ENV["XCODE_SIGNIN_ID"]
}

# To use for the future integration with browserstack
# appium_server_config = {server_url: "http://#{username}:#{access_key}@hub-cloud.browserstack.com/wd/hub"}
appium_server_config = {server_url: ENV["APPIUM_SERVER_URL"]}
Appium::Driver.new({caps: caps, appium_lib: appium_server_config}, true)
Appium.promote_appium_methods Object

