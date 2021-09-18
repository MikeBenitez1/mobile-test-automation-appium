# frozen_string_literal: true

# This class contains all the actions/validations can be done on swag labs login page for android and iOS

class LoginPage
  class << self
    include LoginElements

    def validate_login_screen
      find_element(:id, LoginElements::IMAGES[:swag_labs_image])
    end

    def login_with_valid_data
      find_element(:id, LoginElements::TEXT_FIELDS[:email]).send_keys("mailo@hotmail.com")
      find_element(:id, LoginElements::TEXT_FIELDS[:password]).send_keys("Test1234")
      find_element(:id, LoginElements::BUTTONS[:login]).click
    end
  end
end

