Feature: Chat
  In order to read the page
  As a viewer
  I want to see the home page of my app

    Scenario: View chat page
        Given I am on the chat page
        Then I should see "Type your message from the form bellow to have a conversation"

    Scenario: Send chat message
        Given I am on the chat page
        Then I should see "Input Message"
        Then I should see "Submit"
        And I enter "hello" as chat message
        And I click "submit" button
        Then I should see "hello"
        Then I should have timestamp
