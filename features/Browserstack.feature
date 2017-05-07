Feature: browserstack

  Scenario: Using browserstack
    Given I am on the homepage
    When I fill in "search" with "Browserstack"
    And I press "go"
    Then I should see "BrowserStack is a cloud-based cross-browser testing tool"
