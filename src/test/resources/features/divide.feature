@division
Feature: Division
  In order to do divide two numbers
  As a an accountant
  I want a feature to divide two numbers in calculator

  Scenario Outline: Divide two numbers
    Given I enter "<num1>","<num2>"
    When I divide  <num1> by <num2>
    Then the division is "<result>"

    @int_division
    Scenarios: As integers
      | num1 | num2 | result |
      | 20   | 10   | 2      |
      | 62   | 31   | 2      |

    @float_division
    Scenarios: As float
      | num1  | num2 | result |
      | 20.0  | 10.0 | 2.0    |
      | 125.0 | 5.0  | 25.0   |