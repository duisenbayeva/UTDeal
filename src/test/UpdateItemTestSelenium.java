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
		driver.get("http://localhost:8080/test_project/home.jsp");
		Assert.assertEquals("Welcome to UTDeals", driver.getTitle());
	}

	@Test
	public void testSignInLink() throws InterruptedException {
		WebElement link = driver.findElement(By.id("signInBtn"));
		link.submit();
		Thread.sleep(5000);
		Assert.assertEquals("Login Page", driver.getTitle());
	}

	@Test
	public void testLoginBox() throws InterruptedException {
		WebElement usernameBox = driver.findElement(By.id("username"));
		usernameBox.sendKeys("qwe111111");
		WebElement passwordBox = driver.findElement(By.id("password"));
		passwordBox.sendKeys("Qwerty123");
		Thread.sleep(5000);
		WebElement loginBtn = driver.findElement(By.id("loginBtn"));
		loginBtn.click();
		Thread.sleep(5000);
		WebElement link = driver.findElement(By.id("viewPostedItemsLink"));
		link.click();
		Assert.assertEquals("List of posted items", driver.getTitle());
	}
	
	@Test
	public void testUpdateItemBox() throws InterruptedException {
		WebElement itemNameBox = driver.findElement(By.id("itemName"));
		itemNameBox.sendKeys("chair1");
		Thread.sleep(5000);
		WebElement updateBtn = driver.findElement(By.id("updateBtn"));
		updateBtn.click();
		Thread.sleep(5000);
		Assert.assertEquals("Item Updated", driver.getTitle());
	}

	@After
	public void closePage() {
		driver.quit();
	}

}
