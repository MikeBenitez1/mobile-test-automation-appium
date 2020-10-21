class XimbalSignupPage
  class << self
    include XimbalLoginElements
    include XimbalSignupElements

    def signup_with_valid_data
      find_element(:id, XimbalLoginElements::BUTTONS[:signup]).click
      manage.timeouts.implicit_wait = LONG_TIME_OUT
      find_element(:id, XimbalSignupElements::IMAGES[:ximbal_image])
      find_element(:id, XimbalSignupElements::TEXT_FIELDS[:name]).send_keys("Mailo")
      find_element(:id, XimbalSignupElements::TEXT_FIELDS[:email]).send_keys("mailo@hotmail.com")
      find_element(:id, XimbalSignupElements::TEXT_FIELDS[:password]).send_keys("Test1234")
      find_element(:id, XimbalSignupElements::TEXT_FIELDS[:confirm_password]).send_keys("Test1234")
      find_element(:id, XimbalSignupElements::TEXT_FIELDS[:mobile_number]).send_keys("3312235330")
      find_element(:id, XimbalSignupElements::BUTTONS[:signup]).click
    end
  end
end