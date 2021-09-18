# frozen_string_literal: true

# This class contains all the actions/validations can be done on swag labs home page for android and iOS

class HomePage
  class << self
    import_from('HomeElements')

    def validate_home_screen
      wait_for(LONG_TIME_OUT) { find_native_element(TEXT_VIEWS[:home_copy]) }
    end

  end
end

