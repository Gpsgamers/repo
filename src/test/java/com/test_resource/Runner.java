package com.test_resource;

import java.time.Duration;
import java.util.List;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class Runner{
	public WebDriver driver;
	public test_step method = new test_step();
	List<String> mail;
	public int planid;
	@Given("generate email")
	public void generate_email() {
		mail =method.email();
	}

	@When("signup")
	public void signup() {
		driver = new ChromeDriver();
		driver.manage().window().maximize();
		
		driver.get("https://onthefly-qa.contus.us/register");
	    method.signup(driver,mail.get(1));
	}

	@Then("verify email")
	public void verify_email() {
		String current = driver.getWindowHandle();
		method.emailVerification(new ChromeDriver(),mail.get(0));
		driver.switchTo().window(current);
		driver.navigate().refresh();
		method.logout(driver);
	}

	@Given("set the credential to current plan {int} and {string}")
	public void set_the_credential_to_current_plan_and(Integer int1, String string,Integer int2) {
		if(int2 == 1 && int1 != 1 ) {
			method.change_plan_marketing_site(driver, int1,string,"login",mail.get(1));
		}
	}

	@And("choose the plan {int} and {string}")
	public void choose_the_plan_and(Integer int1, String string) {
	    // Write code here that turns the phrase above into concrete actions
	}

	@When("login")
	public void login() {
	    // Write code here that turns the phrase above into concrete actions
	}

	@Then("page navigation {string}")
	public void page_navigation(String string) {
	    // Write code here that turns the phrase above into concrete actions
	}
	
}
