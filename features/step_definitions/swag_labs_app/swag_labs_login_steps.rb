# Cucumber steps which apply to Login related scenarios

When(/^Swag_labs user performs login with "([^"]*)" data$/) do |data_type|
  case data_type
  when 'valid'
    LoginPage.valid_login
  end
end

