class XimbalLoginPage
  class << self
    include XimbalLoginElements

    def validate_login_screen
      find_element(:id, XimbalLoginElements::IMAGES[:ximbal_image])
    end

    def login_with_valid_data
      find_element(:id, XimbalLoginElements::TEXT_FIELDS[:email]).send_keys("mailo@hotmail.com")
      find_element(:id, XimbalLoginElements::TEXT_FIELDS[:password]).send_keys("Test1234")
      find_element(:id, XimbalLoginElements::BUTTONS[:login]).click
    end
  end
end