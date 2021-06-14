#Author: mwalsh@qa.com

Feature: Can calculate addition and subtraction correctly?
  To test whether addition and subtraction return the correct
  results.

  Scenario: 3 add 4 is 7
    Given a calculator
    When 3 and 4 are added
    Then the result should be 7

  Scenario: 4 subtract 3 is 1
    Given a calculator
    When 3 is subtracted from 4
    Then the result should be 1

  Scenario: 10 divide 2 is 5
  	Given a calculator
  	When 10 is divided by 2
  	Then the result should be 5
  	
  Scenario: 5 multiply 2 is 10
   Given a calculator
   When 5 is multiplied by 2
   Then the result should be 10