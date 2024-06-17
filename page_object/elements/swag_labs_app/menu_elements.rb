# frozen_string_literal: true

# Module with all menu android and iOS elements
module MenuElements

  module IOS
    BUTTONS = {
      login_button: {
        locator: :xpath,
        element: '//XCUIElementTypeStaticText[@name="Log In"]'
      }
    }.freeze

  end

  module Android
    BUTTONS = {
      login_button: {
        locator: :xpath,
        element: '//android.widget.TextView[@text="Log In"]'
      }
    }.freeze

  end

end

