package com.test_resource;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WindowType;
import org.openqa.selenium.support.ui.Select;

public class test_step extends elements {
	//public WebDriver driver;
	public Select sel;
	public void signup(WebDriver driver,String email) {
		driver.findElement(signup_full_name).sendKeys(email);
		driver.findElement(signup_Business_Name).sendKeys(email);
		driver.findElement(signup_Work_Email).sendKeys(email);
		driver.findElement(signup_Phone_Number).sendKeys("1234567890");
		driver.findElement(signup_Password).sendKeys("Welcome@123");
		driver.findElement(signup_checkBox).click();
		driver.findElement(signup_createAccount).click();
	}

	public void emailVerification(WebDriver driver,String email) {
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(20));
		driver.manage().window().maximize();
		driver.get("https://www.guerrillamail.com/");
		driver.findElement(By.xpath("//span[@title='Click to Edit']")).click();
		driver.findElement(By.xpath("(//input[@type='text'])[2]")).sendKeys(email);
		driver.findElement(By.xpath("//button[text()='Set']")).click();
		sel = new Select(driver.findElement(By.xpath("//select[@id='gm-host-select']")));   
		sel.selectByVisibleText("guerrillamail.com");
		driver.findElement(By.xpath("//td[contains(text(),'Welcome to OnTheFly')]")).click();
		driver.findElement(By.xpath("//a[contains(text(),'Activate Account')]")).click();
		driver.switchTo().newWindow(WindowType.TAB);
		driver.quit();
	}
	
	public void login(WebDriver driver,String email,String password) {
		driver.findElement(login_email).sendKeys(email);
		driver.findElement(login_password).sendKeys(password);
		driver.findElement(login_signin).click();
	}
	
	public void logout(WebDriver driver) {
		driver.findElement(logout_profile).click();
		driver.findElement(logout_option).click();
		driver.findElement(logout_button).click();
	}
	
	public List<String> email() {
		String email_id = null ;
		String email = null;
		String count = null, count1=null;
		List<String> mail = new ArrayList<String>();
		try {
			Properties prop = new Properties();
			FileInputStream ip = new FileInputStream(
					System.getProperty("user.dir") + ".\\configuration\\email.properties");
			prop.load(ip);
			email = prop.getProperty("email");
			String domain = prop.getProperty("domain");
			count = prop.getProperty("count");
			String attherate = prop.getProperty("attherate");
			ip.close();
			int num = Integer.parseInt(count);
			count1 = count;
			count = num+1+ "";
			FileOutputStream op = new FileOutputStream(".\\Configuration\\email.properties");
			prop.setProperty("count", count);
			prop.store(op, null);
			email_id = new String(email + num + attherate + domain);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mail.add(email+count1);
		mail.add(email_id);
		return mail;
	}

	
}
