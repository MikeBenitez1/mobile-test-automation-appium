# frozen_string_literal: true

# Module with all swag labs products page android and iOS elements
module ProductsElements

  module IOS

    TEXT_VIEWS = {
      products_copy: {
        locator: :xpath,
        element: '//XCUIElementTypeStaticText[@name="PRODUCTS"] | //XCUIElementTypeStaticText[@name="PRODUCTOS"]'
      }
    }.freeze
  end

  module Android

    TEXT_VIEWS = {
      products_copy: {
        locator: :xpath,
        element: '//android.widget.TextView[@text="PRODUCTS"] | //android.widget.TextView[@text="PRODUCTOS"]'
      }
    }.freeze
  end

end

