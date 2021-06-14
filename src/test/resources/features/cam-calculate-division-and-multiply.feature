Feature: can divide and multiply correctly?
test if returns correct results.

	Scenario: Can calculator multiply numbers correctly?
		Given a new calculator
  	When 10 is divided by 2
  	Then the answer should be 5
  	
  Scenario: can divide numbers correctly?
  	Given a new calculator
   When 5 is multiplied by 2
   Then the answer should be 10