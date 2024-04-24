@features/app/download
Feature: Download app

  As a user, I would like to download a zip file with the newly generated application

  Example: User downloads a zip file with the newly generated application
    Given a user
    When the user opens the home page
    And the user clicks the Generate App button
    Then the system starts app generation
    Then the Generate App button is replaced by the disabled Preparing App button
    When the system finishes app generation
    Then the Preparing App button is replaced by the Download App button
    When the user clicks the Download App button
    Then the user's browser starts downloading a zip file with the newly generated application
