# frozen_string_literal: true

# This class contains all the actions/validations can be done on catalog page for android and iOS

class CatalogPage
  class << self
    import_from('CatalogElements')

    def validate_catalog_screen
      wait_for(LONG_TIME_OUT) { find_native_element(TEXT_VIEWS[:products_copy]) }
    end

    def click_menu_button
      wait_for(LONG_TIME_OUT) { find_native_element(BUTTONS[:menu_button]) }.click
    end

  end
end

