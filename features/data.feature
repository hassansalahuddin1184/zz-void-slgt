Feature: Data Visualization
    Background:
        Given Login with username and password
            | username                      | password  |
            | hassansalahuddin298@gmail.com | Mahnoor05 |

    Scenario: New Question
        Given I am on the Metabase homepage
        When I click on New 
        And I select Question
        And I select my starting data
        And I click on Sample Database
        Then I should see the results of the query

    Scenario: Save Question
        Given I am on the Metabase homepage
        When I click on New 
        And I select Question
        And I select my starting data
        And I click on Sample Database
        And I click on Save
        And I enter a name for the question
        And I click on Save Question
        Then I should see a confirmation message that the question was saved

    Scenario:Visualize
        Given I am on the Metabase homepage
        When I click on New 
        And I select Question
        When I click on Saved Questions
        And I select a previously saved SQL question
        And I click on Visualize
        Then I should see a visualization of the question's results

