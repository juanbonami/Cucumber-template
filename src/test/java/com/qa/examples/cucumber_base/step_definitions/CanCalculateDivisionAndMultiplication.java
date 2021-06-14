package com.qa.examples.cucumber_base.step_definitions;

import static org.junit.Assert.assertEquals;

import com.qa.examples.cucumber_base.Calculator;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class CanCalculateDivisionAndMultiplication {
	
	private Calculator calculator;
	private double actualAnswer;

	@Given("a new calculator")
	public void aNewCalculator() {
		calculator = new Calculator();
	}
	
	@When("{int} is multiplied by {int}")
	public void is_multiplied_by(Integer int1, Integer int2) {
	    actualAnswer = calculator.multiply(int1, int2);
	}

	
	@When("{int} is divided by {int}")
	public void isDividedBy(Integer int1, Integer int2) {
		actualAnswer = calculator.divide(int1, int2);
	}
	
	@Then("the answer should be {int}")
	public void theAnswerShouldBe(Integer expectedResult) {
	    assertEquals(expectedResult.doubleValue(), actualAnswer, 2);
	}

}
