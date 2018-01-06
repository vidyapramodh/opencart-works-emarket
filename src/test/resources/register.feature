
Feature: Verify the Register Account functionality
  Background: Given user is on Home  page


  Scenario Outline: : User can successfully Register with valid credentials
When  User selects MY Account
And   Clicks on Register
And   User enters First Name"<First Name>"
And   User enters Last Name"<Last Name>"
And   User enters E-Mail "<E-Mail>"
And   User enters Telephone"<Telephone>"
And   User enters Password"<Password>"
And   User enters Password Confirm"<Password Confirm>"
Then User should be successfully land on a page with text "Your Account Has Been Created"

  Examples:
    |First Name|Last Name|E-Mail|Telephone|Password|Password Confirm|
    |srividya|Madaram|vidya@live.co.uk|0795623560|bindas123|bindas123|
    |preethi |chopra |preethi@gmail.com  |0721232123|humara12 |humara12 |
    |tulasi  |desai  |tulasi @gmail.com  |0701040086|fana23   |fana23   |


  Scenario Outline: : User cannot  Register with IN-Valid credentials
    When  User selects MY Account
    And   Clicks on Register
    And   user enters In Valid First Name"<First Name>"
    And   user enters  Last Name"<Last Name>"
    And   user enters In Valid E-Mail"<E-Mail>"
    And   user enters  In Valid Telephone"<Telephone>"
    And   user enters Password"<Password>"
    And   user enters In Valid Password Confirm"<Password Confirm>"
    Then  Error message should be displayed

    Examples:
      |First Name|Last Name|E-Mail           |Telephone  |Password |Password Confirm|
      |sm        |    M    |srividya@live.uk |           |bindas123|bindas123       |
      |preethi   |         |preethi gmail.com|0721232123 |humara12 |humara          |
      |tulasi    |desai      |tulasi .com    |0701040086 |         |fana23          |


