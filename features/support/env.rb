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

# To call these values from implicit timeouts on step definitions or pages
# SHORT_TIME_OUT = 2
# LONG_TIME_OUT = 10

# Setting the environment file
ENV_FILE_PATH = "./config/#{ENV["DEVICE"]}.env"
Dotenv.load(ENV_FILE_PATH)

# Defining desired capabilities hash to be called from selected environment file
caps = {platformName: ENV["PLATFORM_NAME"],
        platformVersion: ENV["OS_VERSION"],
        deviceName: ENV["DEVICE_NAME"],
        app: ENV["APP_PATH"],
        automationName: ENV["AUTOMATION_NAME"],
        noReset: ENV["NO_RESET"] ,
        enforceAppInstall: ENV["ENFORCE_APP_INSTALL"],
        udid: ENV["UDID"],
        xcodeOrgId: ENV["XCODE_ORG_ID"],
        bundleId: ENV["BUNDLE_ID"],
        "browserstack.networkLogs": ENV["BROWSERSTACK_NETWOKLOGS"],
        "browserstack.debug": ENV["BROWSERSTACK_DEBUG"],
        xcodeSigningId: ENV["XCODE_SIGNIN_ID"]}

# Selecting the appium url server depending if running on browserstack or local device
appium_server_config = ENV["DEVICE"].include?("browserstack") ? {server_url: "http://#{ENV["USERNAME"]}:#{ENV["ACCESS_KEY"]}@hub-cloud.browserstack.com/wd/hub"} : {server_url: ENV["APPIUM_SERVER_URL"]}

# Creating a new appium driver object
Appium::Driver.new({caps: caps, appium_lib: appium_server_config}, true)

# Promoting the appium objects in all the classes
Appium.promote_appium_methods Object

