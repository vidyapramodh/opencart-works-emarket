
  Feature: Verify major links functionality on Home page

    Background: Given user is on Home page

    Scenario: Verify  information links Functionality

      When User clicks on About Us link
      Then User should land on About Us page
      When User navigates back
      And  he clicks on FAQ link
      Then User should land on FAQ page
      When User navigates back
      And  he clicks on Warranty And Services link
      Then User should  land on Warranty page
      When User navigates back
      And  he clicks on support 24/7 page link
      Then User should  land on support 24/7 page
      When User navigates back
      And  he clicks on Product Registration link
      Then User should  land on Product Registration  page

      Scenario: Verify Wish List functionality

        When User clicks on Wish List
        Then User should navigate to New customer or Returning customer page

    Scenario: Verify Checkout functionality

      When User clicks on Checkout
      Then User should navigate to Shopping Cart page

    Scenario: Verify Login functionality

      When User clicks on Login
      Then User should navigate to Shopping Cart page


    Scenario: User should subscribe newsletter successfully

      When  user enters valid Email as"sri@gmail.com"
      And   clicks on subscribe button
      Then  User should see a text "Subscription Successfull"

    Scenario: Verify  Brands  link Functionality
      When User clicks on Brands  link
      Then User should land on  Find Your Favorite Brand page

    Scenario: Verify Gift Certificates link Functionality
      When User clicks on Gift Certificates link
      Then User should land on  Purchase a Gift Certificate page

      Scenario Outline: Verify user can successfully purchase a gift certificate with valid credentials
        Given  User is on Purchase a Gift Certificate page
        When   User enters Recipient's Name"<Recipient's Name>"
        And    User enters Recipient's e-mail"<Recipient's e-mail>"
        And    User enters Your Name"<Your Name>"
        And    User enters Your e-mail"<Your e-mail>"
        And    User enters Message"<Message>"
        And    User enters Amount"<Amount>"
        And    User selects the check box
        And    Clicks on  Continue
        Then   Thank you for purchasing a gift certificate message is displayed
   Examples:
        |Recipient's Name|Recipient's e-mail|Your Name|Your e-mail     |Message       |Amount|
        |priyanka        |priyank@gmail.com |vidya    |vidya@live.co.uk|Happy birthday|25    |
        |maria           |maria @gmail.com  |renu    |desai@live.co.uk|Merry Christmas|30    |

    Scenario Outline: Verify user cannot  purchase a gift certificate with invalid e-mail
      Given  User is on Purchase a Gift Certificate page
      When   User enters Recipient's Name"<Recipient's Name>"
      And    User enters invalid Recipient's e-mail"<Recipient's e-mail>"
      And    User enters  Your Name"<Your Name>"
      And    User enters invalid Your e-mail"<Your e-mail>"
      And    User enters Message"<Message>"
      And    User enters  Amount"<Amount>"
      And    User selects the check box
      And    Clicks on  Continue
      Then   Error message" E-Mail Address does not appear to be valid " is displayed
      Examples:
        |Recipient's Name|Recipient's e-mail|Your Name|Your e-mail     |Message       |Amount|
        |priyanka        |priyanks.com      |vidya    |vidya@live.co.uk|Happy birthday|25    |
        |maria           |maria gmail.com  |renu    |desai@live.co.uk|Merry Christmas |30    |

    Scenario: Verify user cannot  purchase a gift certificate with deselect check box
      Given  User is on Purchase a Gift Certificate page
      When   User enters all fields with valid credentials
      And    User  Uncheck the check box
      And    clicks on continue
      Then   Warning message" You must agree that the gift certificates are non-refundable" is displayed

    Scenario: verify user can see the website in different language
      When User clicks on language menu bar
      And  Selects a language
      Then User can see the site in the selected language

    Scenario: Verify  Affiliate link Functionality
      When User clicks on Affiliate  link
      Then User should land on Affiliate Program page

    Scenario: verify user can  change the currency

      When User points on currency drop down button
      And  Clicks on Pound Sterling
      Then User should successfully change the currency into Pound sterling

    Scenario: Verify User can add a product to the cart

      When  User selects a particular product on home page
      And   User lands on that product page
      And   User selects available option
      And   User clicks on ADD TO CART button
      Then  User should successfully add product to his cart


    Scenario: verify user can remove the product from his cart successfully

      When User adds a product to my cart
      And  clicks on view cart
      And  User clicks on remove button
      Then User should successfully remove the item from his cart
