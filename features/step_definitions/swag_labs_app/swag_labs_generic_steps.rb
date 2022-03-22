# Generic cucumber steps which can reuse wording and actions between scenarios

Given(/^Swag_labs user sees the "([^"]*)" screen$/) do |screen|
  case screen
  when 'login'
    LoginPage.validate_login_screen
  when 'products'
    ProductsPage.validate_products_screen
  end
end

