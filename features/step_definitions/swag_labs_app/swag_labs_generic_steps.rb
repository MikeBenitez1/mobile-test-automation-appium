# Generic cucumber steps which can reuse wording and actions between scenarios

Given(/^User sees the "([^"]*)" screen$/) do |screen|
  case screen
  when 'catalog'
    CatalogPage.validate_catalog_screen
  when 'login'
    LoginPage.validate_login_screen
  end
end

Given(/^User clicks the "([^"]*)" button$/) do |button|
  case button
  when 'menu'
    CatalogPage.click_menu_button
  when 'login'
    MenuPage.click_login_button
  end
end

