package com.test_resource;

import java.util.List;

import org.openqa.selenium.chrome.ChromeDriver;

public class sample {
	public static void main(String[] args) {
		test_step method = new  test_step();
		List<String> mail =method.email();
		ChromeDriver ref = new ChromeDriver();
		ref.manage().window().maximize();
		ref.get("https://onthefly-qa.contus.us/register");
		test_step step = new test_step();
		step.signup(ref, mail.get(1));
	}
}
