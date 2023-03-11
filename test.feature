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
    
    
# Gherkin Scenarios by hassan
Feature:Data Import and Visualization

    Scenario: Creating custom queries using SQL
    Given I am a user of Metabase
    And I have already connected to a data source
    When I go to the "Ask a question" section
    And I choose to use SQL as my query language
    Then I should be able to write custom SQL queries to extract specific data from my data source
    And I should be able to execute those queries and see the resulting data
    And I should be able to save those queries for future use and share them with other users if desired.

    Scenario: Using Query Builder to analyze data
    Given I am a user of Metabase
    And I have already connected to a data source
    When I go to the "Ask a question" section
    And I choose to use Query Builder to analyze the data
    Then I should be able to select the data source and data sets that I want to use
    And I should be able to drag and drop fields to build my query
    And I should be able to apply filters to refine the results of my query
    And I should be able to visualize the results of my query in various formats, such as charts and tables.

    Scenario: Applying filters to a query
    Given I am a user of Metabase
    And I have already created a query using Query Builder or SQL
    When I go to the "Filters" section
    And I choose the fields that I want to filter on
    Then I should be able to apply various types of filters, such as text filters, date filters, and range filters
    And I should be able to see the results of my query update in real-time as I apply filters.

Feature:Models

    Scenario: Creating data models without SQL variables
    Given I am a user of Metabase
    And I have already connected to a data source
    When I go to the "Data Model" section
    And I choose to create a new data model
    Then I should be able to create a data model without needing to use SQL variables
    And I should be able to define relationships between different data sets and create joins between them using a user-friendly interface
    And I should be able to save my data model and use it to quickly create reports and dashboards.

    Scenario: Turning a model back into a question
    Given I am a user of Metabase
    And I have already created a data model
    When I go to the "Data Model" section
    And I choose to turn the data model back into a question
    Then I should be able to select the data sets and fields that I want to use in my question
    And I should be able to apply filters to refine the results of my question
    And I should be able to visualize the results of my question in various formats, such as charts and tables.

    Scenario: Adding metadata to data models
    Given I am a user of Metabase
    And I have already created a data model
    When I go to the "Data Model" section
    And I choose to add metadata to my data model
    Then I should be able to add descriptions and annotations to the data sets and fields in my data model
    And I should be able to share this metadata with other users who have access to the data model.

    Scenario: Using data models to create reports and dashboards
    Given I am a user of Metabase
    And I have already created a data model
    When I go to the "Reports" or "Dashboards" section
    And I choose to create a new report or dashboard
    Then I should be able to use my data model to quickly build the report or dashboard
    And I should be able to customize the visualization and layout of the report or dashboard to meet my needs
    And I should be able to save the report or dashboard and share it with other users if desired.

Feature:Database Queries

    Scenario: Creating custom queries using SQL
    Given I am a user of Metabase
    And I have already connected to a data source
    When I go to the "Ask a question" section
    And I choose to use SQL as my query language
    Then I should be able to write custom SQL queries to extract specific data from my data source
    And I should be able to execute those queries and see the resulting data
    And I should be able to save those queries for future use and share them with other users if desired.

    Scenario: Using Query Builder to analyze data
    Given I am a user of Metabase
    And I have already connected to a data source
    When I go to the "Ask a question" section
    And I choose to use Query Builder to analyze the data
    Then I should be able to select the data source and data sets that I want to use
    And I should be able to drag and drop fields to build my query
    And I should be able to apply filters to refine the results of my query
    And I should be able to visualize the results of my query in various formats, such as charts and tables.

    Scenario: Applying filters to a query
    Given I am a user of Metabase
    And I have already created a query using Query Builder or SQL
    When I go to the "Filters" section
    And I choose the fields that I want to filter on
    Then I should be able to apply various types of filters, such as text filters, date filters, and range filters
    And I should be able to see the results of my query update in real-time as I apply filters.
