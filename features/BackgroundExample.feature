@javascript
Feature: Behat Example
  To show the example of the Background

  Background:
    Given I am on the homepage
    And I visit "/user"
    When I fill in "Username" with "admin"
    And I fill in "Password" with "admin"
    And I press the "Log in" button
  @one
  Scenario: user should be able to create and access the blog.
    Given I visit "/node/add"
    And I click "Blog"
    Then I should be on "/node/add/blog"
    When I fill in "Title" with "Behat Background Example-1"
    And I fill in "Body" with:
    """
    Lorem ipsum dolor sit amet, at usu propriae vivendum nominati, ea liber civibus eloquentiam usu.
    Elitr epicurei cu mea. Ad sit epicuri consetetur interesset. Civibus legendos pertinax vis cu.
    No has alia assueverit, pro nostro aliquam id. Te equidem fastidii vim.
    Ad facete tibique mel, in facer nemore eruditi vix.
    Cum oblique scaevola dissentias an. Ea mea mentitum euripidis maiestatis, in eos dictas aliquando neglegentur,
    usu choro dolor ea. Albucius corrumpit sententiae ne his. Vel an quot neglegentur, pro audiam tacimates at, in vix utinam minimum.
    Dicit ornatus scriptorem ea est, ad pro nisl noster offendit.
    Vide ipsum his te, nulla mentitum adversarium est eu. Postea appetere abhorreant per eu.
    Ei cibo animal splendide vel. Duo saperet abhorreant ex, id per illud nobis iisque.
    His ne saperet facilisi, mucius impedit an eam, nec causae persius an.
    Te sea equidem tractatos theophrastus, vel ea nobis deserunt.
    """
    And I press the "Save and publish" button
    Then I should see "Blog Behat Background Example-1 has been created."
    When I am an anonymous user
    And I visit "/blogs"
    Then I should see "Behat Background Example-1"
    When I click "Behat Background Example"
    Then I should not see "Page not found"

  Scenario: user should be able to create and access the blog.
    Given I visit "/node/add"
    And I click "Blog"
    Then I should be on "/node/add/blog"
    When I fill in "Title" with "Behat Background Example-2"
    And I fill in "Body" with:
    """
    Lorem ipsum dolor sit amet, at usu propriae vivendum nominati, ea liber civibus eloquentiam usu.
    Elitr epicurei cu mea. Ad sit epicuri consetetur interesset. Civibus legendos pertinax vis cu.
    No has alia assueverit, pro nostro aliquam id. Te equidem fastidii vim.
    Ad facete tibique mel, in facer nemore eruditi vix.
    Cum oblique scaevola dissentias an. Ea mea mentitum euripidis maiestatis, in eos dictas aliquando neglegentur,
    usu choro dolor ea. Albucius corrumpit sententiae ne his. Vel an quot neglegentur, pro audiam tacimates at, in vix utinam minimum.
    Dicit ornatus scriptorem ea est, ad pro nisl noster offendit.
    Vide ipsum his te, nulla mentitum adversarium est eu. Postea appetere abhorreant per eu.
    Ei cibo animal splendide vel. Duo saperet abhorreant ex, id per illud nobis iisque.
    His ne saperet facilisi, mucius impedit an eam, nec causae persius an.
    Te sea equidem tractatos theophrastus, vel ea nobis deserunt.
    """
    And I press the "Save and publish" button
    Then I should see "Blog Behat Background Example-2 has been created."
    When I am an anonymous user
    And I visit "/blogs"
    Then I should see "Behat Background Example-2"
    When I click "Behat Background Example"
    Then I should not see "Page not found"



