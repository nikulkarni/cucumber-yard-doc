@subtraction
Feature: Subtraction
  In order to do subtraction of two numbers 
  As a an account
  I want a feature two subtract two numbers in calculator

  Scenario Outline: Subtract two numbers
    Given I enter "<num1>","<num2>"
    When I subtract them
    Then the subtraction is "<result>"

    @float_subtraction
    Scenarios: As float
      | num1 | num2 | result |
      | 20.0 | 10.0 | 10.0   |
      | 30.0 | 15.0 | 15.0   |

    @negative_subtraction
    Scenarios: negative numbers
      | num1 | num2 | result |
      | -10  | 20   | -30    |
      | 20   | -30  | 50     |
      | -20  | -30  | 10     |
