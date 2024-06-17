# frozen_string_literal: true

# This class contains all the actions can be done on menu page for android and iOS

class MenuPage
  class << self
    import_from('MenuElements')

    def click_login_button
      wait_for(LONG_TIME_OUT) { find_native_element(BUTTONS[:login_button]) }.click
    end


  end
end

