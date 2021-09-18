# frozen_string_literal: true

# This class contains all the actions/validations can be done on swag labs login page for android and iOS

class LoginPage

  class << self
    import_from('LoginElements')

    def validate_login_screen
      wait_for(LONG_TIME_OUT) { find_native_element(TEXT_VIEWS[:login_copy]) }
    end

    def valid_login
      wait_for(LONG_TIME_OUT) { find_native_element(TEXT_FIELDS[:username_field]) }.send_keys(Config.credentials['valid_user'])
      wait_for(LONG_TIME_OUT) { find_native_element(TEXT_FIELDS[:password_field]) }.send_keys(Config.credentials['valid_password'])
      wait_for(LONG_TIME_OUT) { find_native_element(BUTTONS[:login_button]) }.click
    end

  end

end

