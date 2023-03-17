Feature: Text Cards

    Scenario: Add a Text Card to the Dashboard
        Given I am a user of Metabase
        And I have already connected to a data source
        When I navigate to the Dashboard
        Then I should see a button to add a new text card
        When I click on the button to add a new text card
        Then I should see a form to create a new text card
        When I fill the form data
        Then I should be able to save the text card to the dashboard


    Scenario: Add an Image to a Text Card
        Given I am a user of Metabase
        And I have already connected to a data source
        And I have created a text card
        When I navigate to the text card page
        Then I should see the card title and description
        And a button to add an image
        When I click on the button to add an image
        Then I should see a file upload form
        And I should be able to select an image file to upload
        When I select an image file and upload it
        Then the image should be added to the text card


    Scenario: Text Card Preview
        Given I am a user of Metabase
        And I have already connected to a data source
        And I have created a text card
        When I navigate to the text card page
        Then I should see a list of cards
        And a button to preview the card
        When I click on the button to preview the specific card
        Then I should preview the text card