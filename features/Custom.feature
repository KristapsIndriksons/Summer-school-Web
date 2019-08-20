@custom
Feature: Custom feature

  @custom_online
  Scenario: Write a message to the first person who is online
    Given I am signed in
    When I Start a New Chat with first online
    And I Send a Chat Message with text "Hello, stranger!"
    And I clean the direct message list

  @custom_settings
  Scenario: Change settings
    Given I am signed in
    When I click on settings
    And I click privacy&safety
    And I check "Keep me safe"
    Then I click esc


