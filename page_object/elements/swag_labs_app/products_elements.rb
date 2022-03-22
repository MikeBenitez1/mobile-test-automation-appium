# frozen_string_literal: true

# Module with all swag labs products page android and iOS elements
module ProductsElements

  module IOS

    TEXT_VIEWS = {
      products_copy: {
        locator: :id,
        element: 'PRODUCTS'
      }
    }.freeze
  end

  module Android

    TEXT_VIEWS = {
      products_copy: {
        locator: :xpath,
        element: '//android.widget.TextView[@text="The currently accepted usernames for this application are (tap to autofill):"]'
      }
    }.freeze
  end

end

