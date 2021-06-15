package com.qa.examples.cucumber_base.step_definitions;

import static org.junit.Assert.assertEquals;

import java.util.concurrent.TimeUnit;

import org.junit.AfterClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.PageFactory;

import io.cucumber.java.After;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pages.HomePages;
import pages.ResultPages;

public class SearchPage {
	
	WebDriver driver;
	//HomePages page = PageFactory.initElements(driver, HomePages.class);
	//ResultPages result = PageFactory.initElements(driver, ResultPages.class);
	
	
	@Given("navigate to google")
	public void navigateToGoogle() {
		System.setProperty("webdriver.chrome.driver", "src/test/resources/drivers/chromedriver.exe");
	   driver = new ChromeDriver();
	   driver.manage().window().fullscreen();
	   driver.manage().timeouts().pageLoadTimeout(10, TimeUnit.SECONDS);
	   driver.get(HomePages.getUrl());
	}
	
	@When("enter search query")
	public void enterSearchQuery() {
		WebElement search = driver.findElement(By.name("q"));
		search.sendKeys("Wikipedia");
		search.submit();
	}
	
	@Then("return web element for confirmation")
	public void returnWebElementForConfirmation() {
		ResultPages result = PageFactory.initElements(driver, ResultPages.class);
		System.out.println(result.getTitle().getText());
	    assertEquals(result.getTitle().getText(), "Wikipedia");
	}
	
	@AfterClass()
	public void closeBrowser() {
		driver.quit();
	}



}
