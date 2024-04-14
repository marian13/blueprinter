@features/theme/toggle
Feature: Toggle theme

  As a User, I would like to toggle light and dark theme

  Example: User toggles theme
    Given a user
    When the user opens the Blueprinter app
    Then the user is redirected to the home page
    Then the current theme is selected as the light theme by default
    When the user clicks on the toggle theme button in the top nav bar
    Then the current theme is switched to the dark theme
    When the user clicks on the toggle theme button in the top nav bar
    Then the current theme is switched to the light theme
