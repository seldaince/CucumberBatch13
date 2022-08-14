Feature: Login Feature

  Background: //only login feature dose not have background

    Given user is navigated to HRMS application

  Scenario: valid username and password

    When the user enters valid username and password
    And user clicks on login button
    Then the user is successfully logged in

  Scenario: invalid username and password

      When the user enters invalid username and password
      And user clicks on login button
      Then the user is unable to log in

  Scenario: invalid username

    When the user enters invalid username
    And user clicks on login button
    Then error message should be displayed invalid username

  Scenario: invalid password

    When the user enters invalid password
    And user clicks on login button
    Then error message should be displayed invalid password

  Scenario: password special character

    When the user enters invalid password
    And user clicks on login button
    Then error message should be displayed one special character

  Scenario: empty password

    When the user enters invalid password
    And user clicks on login button
    Then error message should be displayed cannot be empty
