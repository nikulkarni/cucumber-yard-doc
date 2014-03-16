@addition
Feature: Addition
  In order to do addition of two numbers
  As a an accountant
  I want a feature two add two numbers in calculator

  Scenario Outline: Add two numbers
    Given I enter "<num1>","<num2>"
    When I add them together
    Then the result is "<sum>"

    @int_add
    Scenarios: As integers
      | num1 | num2 | result |
      | 10   | 20   | 30     |
      | 3    | 34   | 37     |

    @float_add
    Scenarios: As float
      | num1 | num2 | sum  |
      | 20.0 | 10.0 | 30.0 |
      | 30   | 15.0 | 45.0 |

    @negative_add
    Scenarios: negative numbers
      | num1 | num2 | sum |
      | -10  | 20   | 10  |
      | 20   | -30  | -10 |
      | -20  | -30  | -50 |
