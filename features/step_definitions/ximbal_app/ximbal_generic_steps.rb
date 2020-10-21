Given(/^Ximbal user opens the app$/) do
  # App opened automatically by the driver
end

Then(/^Ximbal user sees the login screen$/) do
  XimbalLoginPage.validate_login_screen
end

Then(/^Ximbal user sees the home screen$/) do
  XimbalHomePage.validate_home_screen
end

