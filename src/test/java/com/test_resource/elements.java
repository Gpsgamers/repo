package com.test_resource;

import org.openqa.selenium.By;

public class elements {
	By signup_full_name = By.xpath("//input[@id='name']");
	By signup_Business_Name = By.xpath("//input[@id='organisationNames']");
	By signup_Work_Email = By.xpath("//input[@id='emailID']");
	By signup_Phone_Number = By.xpath("//input[@id='phoneNum']");
	By signup_Password = By.xpath("//input[@id='password']");
	By signup_checkBox = By.xpath("//input[contains(@name,'CheckBox')]");
	By signup_createAccount = By.xpath("//button[text()='Create Account']");
	By signup_login = By.xpath("//*[text()='Sign In']");
	
	By login_email = By.xpath("//input[@name='email']");
	By login_password = By.xpath("//input[@name='password']");
	By login_signin = By.xpath("//div[contains(text(),'Sign In')]");

	By stripe_cardNumber = By.xpath("//input[contains(@id,'cardNumber')]");
	By stripe_cardExpiry = By.xpath("//input[contains(@id,'cardExpiry')]");
	By stripe_cardCvc = By.xpath("//input[contains(@id,'cardCvc')]");
	By stripe_billingName = By.xpath("//input[contains(@id,'billingName')]");
	By stripe_subscribe = By.xpath("//span[contains(text(),'Processing...')]");
	By stripe_back = By.xpath("//a[contains(@title,'Contus')]");
	
	By payment_ok = By.xpath("//button[contains(text(),'OK')]");
	
	By logout_profile = By.xpath("//div[@class='profile_name']");
	By logout_option = By.xpath("//span[text()='Log Out']");
	By logout_button = By.xpath("//button[text()='Logout']");
}
