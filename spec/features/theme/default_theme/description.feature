@features/theme/default_theme
Feature: Default theme

  As a user, I would like to have light theme by default

  Example: User has light theme by default
    Given a user
    When the user opens the app
    Then the light theme is selected by default
