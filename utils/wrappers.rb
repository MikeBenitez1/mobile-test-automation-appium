# Wrapper to import the elements module on each page depending the OS and screen

def import_from(required_module)
  include Object.const_get("#{required_module}::#{ENV["PLATFORM_MODULE"]}")
end

# Wrapper to create a custom find_element method for native elements
def find_native_element(native_element)
  find_element(native_element[:locator], native_element[:element])
end

# Wrapper to apply explicit timeouts to elements
def wait_for(seconds)
  Selenium::WebDriver::Wait.new(timeout: seconds).until { yield }
end

