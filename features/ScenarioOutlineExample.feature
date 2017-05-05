Feature: Behat Example
  To show the example of the Scenario Outline

  Background:
    Given I am on the homepage
    And I visit "/user"
    When I fill in "Username" with "admin"
    And I fill in "Password" with "admin"
    And I press the "Log in" button

  Scenario Outline: User should be able to Create blogs.
    Given I visit "/node/add"
    And I click "Blog"
    Then I should be on "/node/add/blog"
    When I fill in "Title" with "<title>"
    And I fill in "Body" with "<body>"
    And I press the "Save and publish" button
    Then I should see "Blog <title> has been created."

    Examples:
      |title              |body                                                                                              |
      |Behat Blog 1/5     |Lorem ipsum dolor sit amet, sed quot delenit propriae at, at eam invidunt eleifend deterruisset.  |
      |Behat Blog 2/5     |Lorem ipsum dolor sit amet, sed quot delenit propriae at, at eam invidunt eleifend deterruisset.  |
      |Behat Blog 3/5     |Lorem ipsum dolor sit amet, sed quot delenit propriae at, at eam invidunt eleifend deterruisset.  |
      |Behat Blog 4/5     |Lorem ipsum dolor sit amet, sed quot delenit propriae at, at eam invidunt eleifend deterruisset.  |
      |Behat Blog 5/5     |Lorem ipsum dolor sit amet, sed quot delenit propriae at, at eam invidunt eleifend deterruisset.  |
