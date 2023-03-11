Feature: Questions

  Scenario: Create a New Question
    Given I am a user of Metabase
    And I have already connected to a data source
    And I have navigated to the Question Page
    Then I should be able to see Create a Question Button
    When I click on that Button
    Then I should be able to see a form
    When I enter a question text
    And I build a query using the query builder
    And I select a visualization type
    Then I should be able to create the question

  Scenario: Create a New Question
    Given I am a user of Metabase
    And I have already connected to a data source
    And I have created a Question
    Then I should be able to save the question


  Scenario: Convert Question to SQL Code
    Given I am a user of Metabase
    And I have already connected to a data source
    And I have created a question
    When I navigate to the question page
    Then I should be able to see the question
    And a button to generate SQL code
    When I click the generate SQL code button
    Then I should be able to see the SQL code for the question




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




Feature: Data Visualization

  Scenario: Different Graphs Options to Visualize Data
    Given I am a user of Metabase
    And I have already connected to a data source
    When I navigate to the data visualization page
    Then I should see options to view my data in different types of graphs
    When I select an option to view my data in a specific graph
    Then I should see the graph displaying my data


  Scenario: Group Data by a Specific Column
  Given I am a user of Metabase
    And I have already connected to a data source
    When I navigate to the data visualization page
    Then I should see my data displayed in a table
    And I should be able to select a column to group my data
    When I select a column to group my data
    Then I should see my data grouped by that column


  Scenario: Modify Graph Properties
    Given I am a user of Metabase
    And I have already connected to a data source
    And I have created a graph from my data
    When I navigate to the graph properties page
    Then I should see options to modify the graph properties
    And I should be able to select a property to modify
    When I modify the selected graph property
    Then I should see the graph with the updated properties



  Scenario: View Trend of Data
    Given I am a user of Metabase
    And I have already connected to a data source
    And I have created a graph from my data
    When I view the graph
    Then I should be able to see the trend of my data over time
    And I should be able to zoom in and out on the graph to view the trend at different levels of detail