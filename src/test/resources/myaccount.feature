
  Feature: Verify the My Account functionality
  Background: Given user is on My Account  page

    Scenario: verify user can successfully change his Account password
     When     User clicks on change your password
      And     User enters new password
      And     user confirms the new password
      And     clicks on continue
      Then    User should successfully change his password

Scenario: Verify user can navigate to Edit information page link

  When  User clicks on Edit your account information link
  Then  User should be landed on  Edit information page

Scenario: Verify user can successfully Edit his information

  When User clicks on Edit your account link
  And  User lands on that particular page
  And  User enters all fields with valid credentials
  And  User clicks on continue
  Then User should successfully Edit his Account

  Scenario: Verify Modify your Address book entries link Functionality

    When User clicks on Modify your Address book entries link
    Then User should be landed on Address Book Entries page

    Scenario: Verify Modify your wish list link Functionality

      When User clicks on Modify your wish list entries link
      Then User should be landed on My Wish List page


    Scenario: Verify view your order history link Functionality

      When User clicks on  view your order history  link
      Then User should be landed on Order History page


    Scenario: Verify Downloads link Functionality

      When User clicks on Downloads   link
      Then User should be landed on Account Downloads page


    Scenario: Verify Your Reward Points link Functionality

      When User clicks on Your Reward Points   link
      Then User should be landed onYour Reward Points page

    Scenario: Verify  View Your return request link Functionality

      When User clicks on View Your return request   link
      Then User should be landed on Product Returns page

    Scenario: Verify   Your Transactions link Functionality

      When User clicks on Your Transactions   link
      Then User should be landed on Your Transactions page


    Scenario: Verify  Recurring Payments link Functionality

      When User clicks on Recurring Payments  link
      Then User should be landed on Recurring Payments page


    Scenario: Verify  Register for affiliate Account link Functionality

      When User clicks on Register for affiliate Account link
      Then User should be landed on  page Affiliate Account page


    Scenario: Verify Subscribe or UnSubscribe Newsletter link Functionality

      When User clicks on Subscribe or UnSubscribe Newsletter link
      Then User should be landed on Newsletter Subscription page

Scenario: Verify user can Successfully Register for Affiliate Account

  When User clicks on Register for affiliate Account link
  And  User enters all fields with valid credentials
  And  User selects the About Us check box
  And  clicks on Continue
  Then User should successfully Register for affiliate Account

    Scenario: Verify  About Us check box Functionality

      When User clicks on Register for affiliate Account link
      And  User enters all fields with valid data
      And  User  un select the About Us check box
      And  clicks on Continue
      Then A text with " Warning: You must agree to the About Us "should be displayed

    Scenario: Verify user cannot  Register for Affiliate Account without mandatory fields

      When User clicks on Register for affiliate Account link
      And  User  does not enter mandatory fields
      And  User selects the About Us check box
      And  clicks on Continue
      Then User should see a message mandatory fields required

    Scenario: Verify user can subscribe Newsletter Subscription

      When User clicks on Subscribe or Unsubcribe Newsletter link
      And  selects yes radio button
      And  clicks on continue
      Then A text "Success: Your newsletter subscription has been successfully updated" should be displayed

    Scenario: Verify  Address book link Functionality
      When User clicks on  Address book  link
      And  User  lands on Address Book Entries page
      And  User  clicks on New Address
      Then User should land on Add Address page

    Scenario  Verify user can add New Address to  Address book

      When  User clicks on New Address
      And   User lands on Add Address Page
      And   User enters all fields with valid credentials
      And   User clicks on continue
      Then  User should successfully add New Address
















