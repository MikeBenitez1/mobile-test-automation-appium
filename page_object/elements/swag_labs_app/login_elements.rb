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
        locator: :accessibility_id,
        element: 'test-Username'
      },
      password_field: {
        locator: :accessibility_id,
        element: 'test-Password'
      }
    }.freeze

    TEXT_VIEWS = {
      login_copy: {
        locator: :accessibility_id,
        element: 'The currently accepted usernames for this application are (tap to autofill):'
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
        locator: :accessibility_id,
        element: 'test-Username'
      },
      password_field: {
        locator: :accessibility_id,
        element: 'test-Password'
      }
    }.freeze

    TEXT_VIEWS = {
      login_copy: {
        locator: :xpath,
        element: '//android.widget.TextView[@text="The currently accepted usernames for this application are (tap to autofill):"]'
      }
    }.freeze
  end

end

