

  Feature: check that Major Links are working properly

  Background: Given user is on Home page
@links
   Scenario: major links are visible
  When User clicks on Wish List link
  Then he should be landed on Login page
  When User navigates back
  And  he clicks on Checkout  link
  Then he should be landed on shopping cart page
  When User navigates back
  And  he clicks on Login link
  Then he should be landed on Sign in or register page

  @Register
  Scenario: User can successfully Register
    Given user is on My Account
    When  user clicks on Register
    And   user enters First Name<First Name>
    And   user enters Last Name<Last Name>
    And   user enters E-Mail<E-mail>
    And   user enters Telephone<Telephone>
    And   user enters Password<Password>
    And   user enters Password Confirm<Password Confirm>
    Then User should be successfully land on a page with text "Your Account Has Been Created"

    Example:
    |First Name|Last Name|E-Mail|Telephone|Password|Password Confirm|
    |srividya|Madaram|srividya@live.co.uk|0795623560|bindas123|bindas123|

    @logout
    Scenario: User should successfully logout
      When user clicks on Logout button
      Then user should successfully logout

      @login
      Scenario: user can successfully login
        When User clicks on Login button
        And  User enters E-mail address as "vidya@gmail.com"
        And  User enters password as "bindas123"
        And  User clicks on LOGIN button
        Then User should successfully Login into his account

    @logout
    Scenario: User should successfully logout
      When user clicks on Logout button
      Then user should successfully logout

      @subscribe

      Scenario: User should subscribe newsletter successfully
        When  user enters valid Email as"sri@gmail.com"
        And clicks on subscribe button
        Then he should see a text "Subscription Successfull"

        @information links

        Scenario: verify all information links are working
            When User clicks on About Us link
            Then User should navigate to About Us page
            When User navigates back
           And  he clicks on FAQ
           Then he should be landed on that particular page
           When User navigates back
           And  he clicks on supports 24/7 page
           Then he should be landed on that particular page

          @currency

          Scenario: verify user can successfully change the currency

            When user points on currency dropdown button
            And  clicks on Pound Sterling
            Then  user should successfully change the currency into Pound sterling

    @cart
    Scenario: Verify User can add a product to the cart

      When  User selects a particular product on home page
      And   User selects available option
      And   User clicks on ADD TO CART button
      Then  User should successfully add product to his cart


      @remove

        Scenario: verify user can remove the product from his cart successfully

        When User adds a product to my cart
        And  clicks on view cart
        And  User clicks on remove button
        Then User should successfully remove the item from his cart
      @reviews

      Scenario: verify user can see a review of a product

        When User selects a product on home page
        And  User navigates to that product detail page
        And  User clicks on REVIEWS
        Then User should successfully see the reviews of that product













