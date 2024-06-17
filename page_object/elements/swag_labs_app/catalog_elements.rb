# frozen_string_literal: true

# Module with all catalog page android and iOS elements
module CatalogElements

  module IOS

    TEXT_VIEWS = {
      products_copy: {
        locator: :xpath,
        element: '//XCUIElementTypeStaticText[@name="Products"] | //XCUIElementTypeStaticText[@name="Productos"]'
      }
    }.freeze

    BUTTONS = {
      menu_button: {
        locator: :accessibility_id,
        element: 'View menu'
      }
    }.freeze

  end

  module Android

    TEXT_VIEWS = {
      products_copy: {
        locator: :xpath,
        element: '//android.widget.TextView[@text="Products"] | //android.widget.TextView[@text="Productos"]'
      }
    }.freeze

    BUTTONS = {
      menu_button: {
        locator: :accessibility_id,
        element: 'View menu'
      }
    }.freeze

  end

end

