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