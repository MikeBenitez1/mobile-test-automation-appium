# Author: miguel_301213@hotmail.com
  Feature: Login - Ximbal

    Scenario: Ximbal user is able to login using a registered account
      Given Ximbal user opens the app
      Then Ximbal user sees the login screen
      When Ximbal user performs "valid" login
      Then Ximbal user sees the home screen