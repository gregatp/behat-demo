Feature: Behat Example
  To show the example of the table

  Background:
    Given I am on the homepage
    And I visit "/user"
    When I fill in the following:
      |Username     |admin     |
      |Password     |admin     |
    And I press the "Log in" button

  Scenario: User should be able to create blog.
    Given I visit "/node/add"
    And I click "Blog"
    Then I should be on "/node/add/blog"
    When I fill in the following:
      |Title  |Behat Table Example        |
      |Body   |Test Body for behat blog   |
    And I press the "Save and publish" button
    Then I should see "Blog Behat Table Example has been created."