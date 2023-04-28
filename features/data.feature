Feature: Data Visualization
    Background:
        Given Login with username and password
            | username                      | password  |
            | hassansalahuddin298@gmail.com | Mahnoor05 |


    Scenario:Visualize a Question
        Given I am on the Metabase homepage
        When I click on New
        And I select Question
        When I click on Saved Questions
        And I select a previously saved question
        Then I click on Visualize
        # Then I should see a visualization of the question's results

