# Author: miguel_301213@hotmail.com
Feature: Sign Up - Ximbal

  Scenario: Ximbal user is able to sign up using valid data
    Given Ximbal user opens the app
    Then Ximbal user sees the login screen
    When Ximbal user performs "valid" sign up on sign up screen
    Then Ximbal user sees the login screen



