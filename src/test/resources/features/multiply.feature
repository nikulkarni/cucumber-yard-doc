@multiplication
Feature: Multiplication
  In order to do multiplication of two numbers
  As a an accountant
  I want a feature two multiply two numbers in calculator

  Scenario Outline: Multiply two numbers
    Given I enter "<num1>","<num2>"
    When I multiply those two numbers together
    Then the multiplication is "<result>"

    @int_multiply
    Scenarios: As integers
      | num1 | num2 | result |
      | 10   | 20   | 200    |
      | 3    | 34   | 102    |

    @float_multiply
    Scenarios: As float
      | num1 | num2  | result |
      | 10.0 | 20.0  | 200.0  |
      | 0.1  | 210.0 | 21.0   |

    @negative_multiply
    Scenarios: negative numbers
      | num1 | num2 | result |
      | -10  | 20   | -200   |
      | 20   | -30  | -600   |
      | -20  | -30  | 600    |
