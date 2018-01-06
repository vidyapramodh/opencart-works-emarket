Feature: Verify Follow Us functionality on Home page

  Background: Given user is on Home page
Scenario: Verify  Facebook link Functionality

When User clicks on Face book link
Then User should land on Face book account page

  Scenario: Verify Twitter  link
When User clicks on Twitter link
Then User should land on Twitter account page

  Scenario: Verify google plus link
    When  User clicks on google plus link
    Then  User should  land on google plus account page

  Scenario: Verify Pinterest   link
    When  User clicks on Pinterest link
    Then  User should  land on  Pinterest account page

  Scenario: verify the Sort By drop down button functionality

    When User selects All Category menu
    And  Clicks on Fashion and Accessories
    And  He navigates to Fashion page
    And  User selects Sort By drop down
    And  Clicks on Price Low to High
    Then User should see the products displayed from Low to High

  Scenario Outline: Verify user can successfully send contact us form with valid credentials

    When  User clicks on Contact Us
    And   User enters Your Name"<Your Name>"
    And   User enters E-Mail Address"<E-Mail Address>"
    And   User enters Enquiry"<Enquiry>"
    And   Clicks on submit button
    Then  User should see "enquiry has been successfully sent"

    Examples:
      |Your Name|E-Mail Address     |Enquiry        |
      |preethi  |preethi@gmail.co.uk|Corem ipsum dolor product delivery|
      |trupthi|trupthi@gmail.co.uk  |Fashion products stock            |

  Scenario: Verify user cannot send contact us form with  Invalid email

    When  User clicks on Contact Us
    And   User enters invalid email id
    And   Clicks on submit button
    Then  Error message"E-Mail Address does not appear to be valid"is displayed

  Scenario:Side Menu Bar Functionality

  When  user scrolls on the Side Menu
  And   clicks on categories
  Then  category window should display

  Scenario: Verify the Category window Functionality
  When  User selects category window
  And   clicks on fashion link
  Then  Fashion page should displayed on main page

  Scenario: Verify the  Cart window Functionality
  When  user scrolls on Side Menu
  And   clicks on cart
  Then  cart window should display

  Scenario: Verify the  Account window Functionality

  When User scrolls on Side Menu
  And  clicks on account
  Then Account window should display

  Scenario: Verify the Search  window Functionality

  When  user scrolls on Side Menu
  And   clicks on search
  Then  Search window should display

  Scenario: Verify the Recent view  window Functionality
  When user scrolls on Side Menu
  And clicks on Recent view
  Then Recently viewed product  window should display

