@cucumber
Feature: Signout in features

  @signout
  Scenario: Log out from Discord Web App
    Given I am on Discord login page
    And I login as user1
    And I click on skip the tutorial
    And I log out from Discord App
    Then I have successfully logged out
