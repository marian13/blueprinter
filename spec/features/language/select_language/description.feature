@features/language/select_language
Feature: Select language

  As a user, I would like to select English or Ukrainian languages

  Example: User selects English language
    Given a user
    When the user opens the app
    And the user clicks on the Open Language Selection Modal button
    And the user selects the English Language option
    And the user clicks the Confirm Language Selection button
    Then the current page is reloaded
    And the language is switched to the English language

  Example: User selects Ukrainian language
    Given a user
    When the user opens the app
    And the user clicks on the Open Language Selection Modal button
    And the user selects the Ukrainian Language option
    And the user clicks the Confirm Language Selection button
    Then the current page is reloaded
    And the language is switched to the Ukrainian language

  Example: User cancels language selection
    Given a user
    When the user opens the app
    And the user clicks on the Open Language Selection Modal button
    And the user clicks the Cancel Language Selection button
    Then the language selection modal is closed
    Then the current page is NOT reloaded
    And the language is NOT switched
