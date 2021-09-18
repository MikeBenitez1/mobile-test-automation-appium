# Generic cucumber steps which can reuse wording and actions between scenarios

Given(/^Swag labs user sees the "([^"]*)" screen$/) do |screen|
  case screen
  when 'login'
    LoginPage.valid_login
  when 'home'
    HomePage.validate_home_screen
  end
end

