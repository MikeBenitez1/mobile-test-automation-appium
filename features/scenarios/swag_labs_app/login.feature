# Author: miguel_301213@hotmail.com
# Swag Labs Login Scenarios

  Feature: Swag Labs - Login

    @regression @login
    Scenario: Swag labs user is able to login using a registered account
      Given Swag labs user sees the "login" screen
      When Swag labs user performs login with "valid" data
      Then Swag labs user sees the "home" screen

