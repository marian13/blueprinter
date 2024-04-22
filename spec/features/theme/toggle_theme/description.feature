@features/theme/toggle_theme
Feature: Toggle theme

  As a user, I would like to toggle light and dark themes

  Example: User toggles from light to dark theme
    Given a user
    When the user opens the app
    And the light theme is selected
    When the user clicks on the toggle theme button
    Then the theme is switched to the dark theme

  Example: User toggles from dart to light theme
    Given a user
    When the user opens the app
    And the dark theme is selected
    When the user clicks on the toggle theme button
    Then the theme is switched to the light theme



