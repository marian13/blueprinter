@features/github/open_repo
Feature: Open GitHub repo

  As a user, I would like to have a link to the GitHub repo

  Example: User opens a link to the GitHub repo
    Given a user
    When the user opens the app
    And the user clicks the Open GitHub Repo link
    Then the user is redirected to the GitHub Repo page
