@javascript
Feature: Behat Example
  To show the example of the behat

  Scenario: User should be able to login.
    Given I am on the homepage
    And I visit "/user"
    When I fill in "Username" with "behat.user"
    And I fill in "Password" with "behat"
    And I press the "Log in" button
    Then I should see "Log out"
    But I should not see "Page not found"
