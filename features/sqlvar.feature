Feature: SQL Query Select
    Background:
        Given Login with username and password
          | username | password |
          | hassansalahuddin298@gmail.com | Mahnoor05 |

  Scenario: Create SQL Query
      Given I click on New button
      When I click on SQL Query button
      Then I should see SQL Query page
      When I write
      Then I see text
      Then I see Variables
      Then I click on Variable Type button