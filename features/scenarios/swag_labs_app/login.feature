# Author: miguel_301213@hotmail.com
# Swag_Labs Login Scenarios

  Feature: Swag_Labs - Login

    @smoke_test @full_regression_suite @happy_paths @login
    Scenario: Swag_labs user is able to login successful using a registered account
      Given User sees the "catalog" screen
      When User clicks the "menu" button
      And User clicks the "login" button
      When User performs login with "valid" data
      Then User sees the "catalog" screen

