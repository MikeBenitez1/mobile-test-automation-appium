# To start the Appium server automatically in local, currently not implemented due Browserstack integration which has his own Appium server
# AfterConfiguration do |config|
#   pid = spawn 'appium --address 0.0.0.0 --port 4723'
#   Process.detach(pid)
#   sleep(10)

AfterConfiguration do
  puts "Setting paths..."
  EvidenceHandler.init_paths
  puts "Running test for: '#{ENV["DEVICE"]}'"
end

Before do
  @driver.start_driver
  hide_keyboard
end

AfterStep do |_results, step|
  EvidenceHandler.take_screenshot(step)
end

After do |scenario|
  if scenario.failed?
    # TODO: handle failed test case and take a screenshot
  end
  hide_keyboard
  @driver.driver_quit
end

# To kill the Appium server automatically in local, currently not implemented due Browserstack integration which has his own Appium server
# at_exit do
#   exec '/usr/bin/killall -KILL node'
# end

