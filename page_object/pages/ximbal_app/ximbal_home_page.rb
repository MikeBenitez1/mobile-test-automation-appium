class XimbalHomePage
  class << self
    include XimbalHomeElements

    def validate_home_screen
      find_element(:id, XimbalHomeElements::IMAGES[:start_image])
    end
  end
end