@features/language/select_language
Feature: Select language

  As a user, I would like to select English or Ukrainian languages

  Example: User selects English language
    Given a user
    When the user opens the app
    And the user clicks on the Select Language button
    And the user selects the English Language option
    Then the language is switched to the English language

  Example: User selects English language
    Given a user
    When the user opens the app
    And the user clicks on the Select Language button
    And the user selects the Ukrainian Language option
    Then the language is switched to the Ukrainian language



