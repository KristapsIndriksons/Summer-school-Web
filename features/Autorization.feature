@cucumber
Feature: Sign in features

  @signin
  Scenario: Sign in Discord Web App
    Given I am on Discord login page
    And I login as user1
    And I click on skip the tutorial
    Then I see that login was successful
