@cucumber
Feature: Chat in features

  @chat
  Scenario: Send a Chat Message
    Given I am on Discord login page
    And I login as user1
    And I see that login was successful
    And I click on skip the tutorial
    And I Start a New Chat with "Kristaps Indriksons"
    And I Send a Chat Message with text "Hello, Kristaps!"
    Then I clean the direct message list
