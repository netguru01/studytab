Feature: User authentication
  In order to login to corresponding dashboard
  A corresponding user
  Should provide login and password

  Scenario: Authenticates admin, redirects to the dashboard, and logs out
    Given I am on the login page
    When I fill in the login form with admin credentials and press "Login"
    Then page should have content "Welcome, John Doe"
    Then I logout

  Scenario: Authenticates student, redirects to the dashboard, and logs out
    Given I am on the login page
    When I fill in the login form with student credentials and press "Login"
    Then page should have content "Welcome, Clark Kent"
    Then I logout

  Scenario: Authentication fails when a user provides wrong credentials
    Given I am on the login page
    When I fill in the login form with wrong credentials and press "Login"
    Then page should have content "Invalid Email or password."