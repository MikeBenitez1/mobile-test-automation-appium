# When running cucumber in the console, ./features/support/env.rb is the first file that is loaded.
# It will load all the dependent gems.

require "appium_lib"
require "cucumber"
require "dotenv"
require "require_all"

# Setting a value to PLATFORM_MODULE depending the env loaded, to be used to load OS elements on pages
ENV["PLATFORM_MODULE"] = ENV["PLATFORM"].include?("IOS") ? "IOS" : "Android"

require_all "./config"
require_all "./handlers"
require_all './utils'
require_all "./page_object"


# Timeout values in seconds for EXPLICIT timeouts on step definitions or pages
SHORT_TIME_OUT = 5
MEDIUM_TIME_OUT = 10
LONG_TIME_OUT = 15

