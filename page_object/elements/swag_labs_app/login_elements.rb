# frozen_string_literal: true

# Module with all swag labs login android and iOS elements
module LoginElements

  module IOS
    BUTTONS = {
      login_button: {
        locator: :id,
        element: 'com.saucelabs.mydemoapp.android:id/loginBtn'
      }
    }.freeze

    TEXT_FIELDS = {
      username_field: {
        locator: :id,
        element: 'com.saucelabs.mydemoapp.android:id/nameET'
      },
      password_field: {
        locator: :id,
        element: 'com.saucelabs.mydemoapp.android:id/passwordET'
      }
    }.freeze

    TEXT_VIEWS = {
      login_copy: {
        locator: :xpath,
        element: '//XCUIElementTypeStaticText[@name="Login"]'
      }
    }.freeze
  end

  module Android
    BUTTONS = {
      login_button: {
        locator: :id,
        element: 'com.saucelabs.mydemoapp.android:id/loginBtn'
      }
    }.freeze

    TEXT_FIELDS = {
      username_field: {
        locator: :id,
        element: 'com.saucelabs.mydemoapp.android:id/nameET'
      },
      password_field: {
        locator: :id,
        element: 'com.saucelabs.mydemoapp.android:id/passwordET'
      }
    }.freeze

    TEXT_VIEWS = {
      login_copy: {
        locator: :xpath,
        element: '//android.widget.TextView[@text="Login"]'
      }
    }.freeze
  end

end

