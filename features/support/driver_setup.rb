# This class contains the handling of driver and capabilities

class DriverSetup

  class << self

    # This method setup driver with scenario attributes
    # @param [scenario_obj] scenario provides scenario information
    def setup_driver(scenario)
      caps = load_capabilities(scenario.name)

      # Selecting the appium url server depending if running on remote or inhouse device farm
      appium_server_config = {server_url: Config.server_url[ENV["DEVICE_FARM"]]}

      # Creating a new appium driver object
      Appium::Driver.new({caps: caps, appium_lib: appium_server_config}, true)

      # Promoting the appium objects in all the classes
      Appium.promote_appium_methods Object
    end

    # This method loads and set up capabilities
    # @param [string] scenario_name is the name to be set in Browserstack (if apply)
    def load_capabilities(scenario_name)
      # Defining desired capabilities hash to be called from selected environment file
      platform_caps = Config.caps[ENV["PLATFORM"]]
      generic_caps = platform_caps["generic"]
      device_farm_caps = platform_caps[ENV["DEVICE_FARM"]]
      unique_caps = platform_caps[ENV["OS_VERSION"]][ENV["DEVICE_FARM"]]
      # definition of "build" and "name" dynamic capabilities for Browserstack
      device_farm_caps["build"] = Time.now.strftime("%d/%m/%Y") if device_farm_caps.include? "build"
      device_farm_caps["name"] = scenario_name if device_farm_caps.include? "name"

      [*generic_caps, *device_farm_caps, *unique_caps].to_h
    end

  end
end

