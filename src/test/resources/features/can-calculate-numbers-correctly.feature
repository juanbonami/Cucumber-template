#Author: mwalsh@qa.com

Feature: Can calculate numbers correctly?
  To test whether addition, subtraction, multiplication and division return the correct
  results.
  
  Todo:
  
  - Implement subtraction
  - Implement division
  - Implement multiplication

  Scenario Outline: <left_operand> add <right_operand> is <expected_result>
    Given a calculator
    When <left_operand> and <right_operand> are added
    Then the result should be <expected_result>
    
    Examples:
    | left_operand | right_operand | expected_result |
    | 3.0 				 | 4.0           | 7.0             |
    | 89.0 				 | 9.0           | 98.0            |
    | 9.0          | 89.0          | 98.0            |
    | 0.0          | 3.0           | 3.0             |
    | 0.0          | -3.0          | -3.0            |
    | 2.5          | 2.5           | 5.00            |

	Scenario Outline: <left_operand> subtract <right_operand> is <expected_result>
    Given a calculator
    When <left_operand> and <right_operand> are subtracted
    Then the result should be <expected_result>
    
    Examples:
    | left_operand | right_operand | expected_result |
    | 4.0 				 | 2.0           | 1.0             |
    | 89.0 				 | 9.0           | 80.0            |
    | 9.0          | 2.0           | 7.0             |
    | 3.0          | 3.0           | 0.0             |
    | 3.0          | 1.0           | 2.0             |
    | 2.5          | 2.0           | 0.5             |
    
  Scenario Outline: <left_operand> divide <right_operand> is <expected_result>
    Given a calculator
    When <left_operand> and <right_operand> are divided
    Then the result should be <expected_result>
    
    Examples:
    | left_operand | right_operand | expected_result |
    | 3.0 				 | 4.0           | 0.75            |
    | 89.0 				 | 9.0           | 9.88            |
    | 9.0          | 89.0          | 0.10            |
    | 0.0          | 3.0           | 0.0             |
    | 0.0          | -3.0          | 0.0             |
    | 2.5          | 2.5           | 1.0             |
    
  Scenario Outline: <left_operand> multiply <right_operand> is <expected_result>
    Given a calculator
    When <left_operand> and <right_operand> are multiplied
    Then the result should be <expected_result>
    
    Examples:
    | left_operand | right_operand | expected_result |
    | 3.0 				 | 4.0           | 12.0            |
    | 89.0 				 | 9.0           | 801.0           |
    | 9.0          | 89.0          | 801.0           |
    | 0.0          | 3.0           | 0.0             |
    | 0.0          | -3.0          | 0.0             |
    | 2.5          | 2.5           | 6.25            |