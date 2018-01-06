
Feature: Verify the Fashion page Functionality
  Background: Given user is on Fashion page

    Scenario: Verify user can see the Specification of a product

      When User clicks on particular product
      And  he navigates to that particular product page
      And  User clicks on Specification
      Then User should see the product specification

  Scenario: Verify user can see the description of a product

    When User clicks on particular product
    And  he navigates to that particular product page
    And  User clicks on description
    Then User should see the product description

  Scenario: Verify user can see the Tag of a product

    When User clicks on particular product
    And  he navigates to that particular product page
    And  User clicks on Tag
    Then User should see the product Tag

  Scenario: Verify User can add a product to the cart

    When  User clicks on particular product
    And   User lands on that product page
    And   User clicks on ADD TO CART button
    Then  User should successfully add the product to his cart

  Scenario: Verify user can view the product in his selected language

    When User clicks on particular product
    And  he navigates to that particular product page
    And  User clicks on Arabic language
    Then User should successfully see the product page in Arabic language

  Scenario: Verify user can change the language

    When User is on product page in Arabic language
    And  User clicks on English language
    Then User should  see the product page in English language

  Scenario: Verify user can add product to compare list

    When User clicks on particular product
    And  he navigates to that particular product page
    And  User clicks on Compare icon
    Then User should see that  product is added to compare list

