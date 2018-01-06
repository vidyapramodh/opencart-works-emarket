
Feature: Verify the All Categories menu Functionality
  Background: Given user is on Home page

 Scenario: Verify Fashion&Accessories link  Functionality
When User points on All Categories menu
And  Clicks on Fashion&Accessories
Then User should successfully land on Fashion page

  Scenario: Verify Bathroom link  Functionality
    When User points on All Categories menu
    And  Clicks on Bathroom
    Then User should successfully land on Bathroom  page

  Scenario: Verify Electronics link  Functionality
    When User points on All Categories menu
    And  Clicks on  Electronics
    Then User should successfully land on  Electronics  page

  Scenario: Verify Pages menu Functionality

    When User points on Pages menu
    And  Clicks on  Coming soon link
    Then User should successfully land on  Coming soon  page

  Scenario: Verify Search bar Functionality

    When User enters "Benderloin officia" item in search bar
    And  Clicks on  search button
    Then User should  land on that item page