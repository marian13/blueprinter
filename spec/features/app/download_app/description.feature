@features/app/download
Feature: Download app

  As a user, I would like to download a zip file with the newly generated application

  Background:
    Given a user
    When the user opens the home page

  Example: User downloads a zip file with the newly generated application
    When the user clicks the Generate App button
    Then the system starts app generation
    Then the Generate App button is replaced by the disabled Preparing App button
    When the system finishes app generation
    Then the Preparing App button is replaced by the Download App button
    When the user clicks the Download App button
    Then the user's browser starts downloading a zip file with the newly generated application

  Example: App generation failed to start
    When the user clicks the Generate App button
    And the system fails to start app generation
    Then the Generate App button is NOT replaced
    And the alert is shown with the start app generation failure reason

  Example: App generation failed to finish
    When the user clicks the Generate App button
    Then the system starts app generation
    Then the Generate App button is replaced by the disabled Preparing App button
    When the system fails to finish app generation
    Then the Preparing App button is NOT replaced
    And the alert is shown with the finish app generation failure reason

  Example: App downloading failed
    When the user clicks the Generate App button
    Then the system starts app generation
    Then the Generate App button is replaced by the disabled Preparing App button
    When the system finishes app generation
    Then the Preparing App button is replaced by the Download App button
    When the user clicks the Download App button
    And the user's browser fails to start downloading
    Then the alert is shown
    And the alert is shown with the downloading failure reason
