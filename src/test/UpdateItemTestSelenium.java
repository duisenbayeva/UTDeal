package test;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class UpdateItemTestSelenium {
	WebDriver driver;

	@Before
	public void openUtDealsHomePage() throws InterruptedException {
		System.setProperty("webdriver.chrome.driver", "chromedriver");
		driver = new ChromeDriver();
		driver.get("localhost:8080/test_project/login.jsp");
	}

	@Test
	public void testUpdateItemBox() throws InterruptedException {
		WebElement usernameBox = driver.findElement(By.id("username"));
		usernameBox.sendKeys("asd222222");
		WebElement passwordBox = driver.findElement(By.id("password"));
		passwordBox.sendKeys("Asd222222");
		WebElement loginBtn = driver.findElement(By.name("submit"));
		Thread.sleep(5000);
		loginBtn.click();
		
		Thread.sleep(5000);
		WebElement link = driver.findElement(By.id("viewPostedItemsLink"));
		link.click();
		
		Thread.sleep(5000);
		WebElement link2 = driver.findElement(By.name("editItem"));
		link2.click();
		Thread.sleep(2000);
		
		WebElement itemNameBox = driver.findElement(By.id("pname"));
		itemNameBox.sendKeys("black desk 33");
		WebElement updateBtn = driver.findElement(By.name("submit"));
		Thread.sleep(2000);
		updateBtn.click();
		
		Thread.sleep(3000);
		WebElement link3 = driver.findElement(By.id("viewPostedItemsLink"));
		link3.click();
		
		Thread.sleep(5000);
	}
	


	@After
	public void closePage() {
		driver.quit();
	}

}
