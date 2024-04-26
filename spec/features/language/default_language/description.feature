@features/language/default_language
Feature: Default language

  As a user, I would like to have the English language by default

  Example: User has English language by default
    Given a user
    When the user opens the app
    Then the English language is selected by default
