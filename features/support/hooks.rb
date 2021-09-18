# Hooks to be executed in different stages of cucumber execution

AfterConfiguration do
  # Setting the environment file
  Config.load_environment
  Config.load_config_file!
  EvidenceHandler.init_paths
  puts Config.strings['running_details']
end

Before do |scenario|
  DriverSetup.setup_driver(scenario)
  EvidenceHandler.feature_scenario_path(scenario)
  EvidenceHandler.counter(perform: :set)
end

AfterStep do
  path = EvidenceHandler.counter
  attach(path, 'image/png') unless path.nil?
  EvidenceHandler.path_to_nil
end

After do |scenario|
  if scenario.failed?
    ss_failure = EvidenceHandler.save(scenario)
    attach(ss_failure, 'image/png')
  end
  @driver.driver_quit
end

