@addEmployee
Feature: Add Employee
  Validation for adding new Employee

  Background:
    Given user is logged in with valid admin credentials
    And user navigates to Add Employee page

  Scenario: Add new Employee
    Given user enters Employee first name and last name
    When user clicks save button
    Then Employee is added successfully

  Scenario: Add Employee without Employee Id
    Given user enters Employee first name and last name
    When user deletes Employee Id
    And user clicks save button
    Then Employee is added successfully

  Scenario Outline: Adding multiple Employees

    When user enters employee "<FirstName>", "<MiddleName>" and "<LastName>"
    And user clicks save button
    Then "<FirstName>","<MiddleName>", "<LastName>" is added and  "<Expected>" is displayed

    Examples:
      | FirstName | MiddleName | LastName | Expected        |
      | yigit h    | han        | ergun    | yigit han ergun |
      | homer     | j          | simpson  | homer j simpson |