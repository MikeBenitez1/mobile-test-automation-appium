# frozen_string_literal: true

# This class contains all the actions/validations can be done on swag labs products page for android and iOS

class ProductsPage
  class << self
    import_from('ProductsElements')

    def validate_products_screen
      wait_for(LONG_TIME_OUT) { find_native_element(TEXT_VIEWS[:products_copy]) }
      sleep(2)
    end

  end
end

