Feature: To demonstrate Behat Hooks

  @hooks
  Scenario: To visit homepage
    Given I am on the homepage
    Then I should not see "Page not found"

  @taggedhook
  Scenario: To visit homepage
    Given I visit "/blogs"
    Then I should not see "Page not found"