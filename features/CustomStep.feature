@javascript
Feature: Behat Example
  To show the example of the Custom text

  Scenario: Blog count should not be more than 9, on the blog page.
    Given I am an anonymous user
    And I am on homepage
    When I click "Blogs"
    Then I should not see blog count more than "9"

  @custom
  Scenario: Blog count should not be more than 9, on the blog page.
      Given I am on the homepage
      And I visit "/user"
      When I fill in the following:
        |Username     |behat.user     |
        |Password     |user           |
      And I press the "Log in" button
    When I click "Blogs"
    Then I should not see blog count more than "9"
    And I print first blog "title"
