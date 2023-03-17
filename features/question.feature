Feature: Questions
    Background:
        Given Login with username and password
            | username              | password   |
            | l192209@lhr.nu.edu.pk| Moazzan123 |
            
    Scenario: Create a New Question
        Given Given I am at Homepage
        Then I click on New Button
        Then I should be able to see Create a Question Button
        Then I click on Question Button
        Then I should be able to see Pick Your Starting data
        And I click on Pick Your Starting Data Button
        Then I should see Databases
        When I click on any Databases
        Then I see Visualize Button

    Scenario: Save a New Question
        Given I am at Question Page
        And I have created a new Question
        Then I should see save Button
        When I click on save Button
        Then I should see Save a new Question
        When I click on save button
        Then I should see saved


    Scenario: Convert Question to SQL Code
        Given I am at Question Page
        And I have created a new Question
        Then I should see a sql icon
        When I click on the sql icon
        Then I should see SQL for this question
        When I click Convert this Question to SQL button
        Then I should see the SQL Code