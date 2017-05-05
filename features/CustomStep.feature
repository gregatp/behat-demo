Feature: Behat Example
  To show the example of the Custom text

  Scenario: Blog count should not be more than 10, on the blog page.
    Given I am an anonymous user
    And I am on homepage
    When I click "Blogs"
    Then I should not see blog count more than "10"

    @api @custom
  Scenario: Blog count should not be more than 10, on the blog page.
    Given I am logged in as a user with the "administrator" role
    And I am on homepage
    When I click "Blogs"
    Then I should not see blog count more than "10"
    And I print first blog "title"
