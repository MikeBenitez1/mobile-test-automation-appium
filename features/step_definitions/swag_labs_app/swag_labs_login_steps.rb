# Cucumber steps which applies to Login related scenarios

When(/^User performs login with "([^"]*)" data$/) do |data_type|
  case data_type
  when 'valid'
    LoginPage.valid_login
  end
end

