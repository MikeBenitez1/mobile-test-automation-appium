# frozen_string_literal: true

# This class contains all the actions/validations can be done on swag labs home page for android and iOS

class HomePage
  class << self
    include LoginElements

    def validate_home_screen
      find_element(:id, HomeElements::IMAGES[:start_image])
    end
  end
end

