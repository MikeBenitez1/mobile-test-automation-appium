# frozen_string_literal: true

# Module with all swag labs login android and iOS elements
module LoginElements

  module IOS
    BUTTONS = {
      login_button: {
        locator: :accessibility_id,
        element: 'test-LOGIN'
      }
    }.freeze

    TEXT_FIELDS = {
      username_field: {
        locator: :xpath,
        element: '//XCUIElementTypeTextField[@name="test-Username"] | //XCUIElementTypeTextField[@name="test-Usuario"]'
      },
      password_field: {
        locator: :xpath,
        element: '//XCUIElementTypeSecureTextField[@name="test-Password"] | //XCUIElementTypeSecureTextField[@name="test-Contraseña"]'
      }
    }.freeze

    TEXT_VIEWS = {
      login_copy: {
        locator: :xpath,
        element: '//XCUIElementTypeStaticText[@name="The currently accepted usernames for this application are (tap to autofill):"] | //XCUIElementTypeStaticText[@name="Los usuarios aceptados para esta aplicación son (toque para autocompletar):"]'
      }
    }.freeze
  end

  module Android
    BUTTONS = {
      login_button: {
        locator: :accessibility_id,
        element: 'test-LOGIN'
      }
    }.freeze

    TEXT_FIELDS = {
      username_field: {
        locator: :xpath,
        element: '//android.widget.EditText[@content-desc="test-Username"] | //android.widget.EditText[@content-desc="test-Usuario"]'
      },
      password_field: {
        locator: :xpath,
        element: '//android.widget.EditText[@content-desc="test-Password"] | //android.widget.EditText[@content-desc="test-Contraseña"]'
      }
    }.freeze

    TEXT_VIEWS = {
      login_copy: {
        locator: :xpath,
        element: '//android.widget.TextView[@text="The currently accepted usernames for this application are (tap to autofill):"] | //android.widget.TextView[@text="Los usuarios aceptados para esta aplicación son (toque para autocompletar):"]'
      }
    }.freeze
  end

end

