Feature: Verify the log In  functionality
Background: Given user is on Home  page

Scenario Outline: User can log In successfully with valid credentials

When User clicks on Login button
And  User enters E-Mail Address"<E-Mail Address>"
And  User enters Password"<Password>"
And  User clicks on submit button
Then User should successfully Login into his account
Examples:
  | E-Mail Address  | Password|
  |vidya@gmail.com  |bindas123|
  |preethi@gmail.com|humara12 |
  |tulasi@gmail.com |fana23   |

Scenario: User should successfully logout
When user clicks on Logout button
Then user should successfully logout

  Scenario Outline: : User cannot Log In successfully with Invalid credentials

    When User clicks on Login button
    And  User enters invalid  E-Mail Address"<E-Mail Address>"
    And  User enters invalid  Password"<Password>"
    And  User clicks on submit button
    Then User should see an Error message

    Examples:
      |E-Mail Address | Password|
      |vinya@gmail.com|bindas   |
      |vidya .com     |         |
      |               |fana23   |

    Scenario: verify Forgot password Functionality

      When User clicks on Log in button
      And  User enters valid  E-mail address
      And  User clicks on Forgot Your Password
      Then User should navigate to Forgot Your Password page

      Scenario: verify user can Login with  social account

        When User clicks on Login button
        And  User enters valid E-Mail Address
        And  User enters valid Password
        And  User clicks on "IN" Social account button
        Then User should navigate to his My Account page


