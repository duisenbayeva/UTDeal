package test;

import java.util.List;

import org.junit.*;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select; 

 
public class SeleniumTest { 
 
 WebDriver driver;       
 @Before  
 public void openUTDealsPage() throws InterruptedException{   
	 System.setProperty("webdriver.chrome.driver","C:\\Users\\lenovo\\Downloads\\chromedriver_win32\\chromedriver.exe");   
	 driver = new ChromeDriver();   
	 driver.get("localhost:8080/test_project/login.jsp"); 
	 }  
 
 @Test  
 public void testLogin() throws InterruptedException{   
	
	 WebElement elem1 = driver.findElement(By.id("username"));
	 elem1.sendKeys("txm172031");
	 WebElement elem2 = driver.findElement(By.id("password"));
	 elem2.sendKeys("Tulika@29");
	 WebElement elem3 = driver.findElement(By.name("submit"));
	 
	 Thread.sleep(5000);
	 elem3.click();
	  
  
	 Select dropdown = new Select(driver.findElement(By.id("categ")));
	 dropdown.selectByIndex(3); 
	 WebElement elem4 = driver.findElement(By.id("Search"));
	 elem4.sendKeys("vac");
	 
	 Thread.sleep(5000); 
 
	 List<WebElement> list = driver.findElements(By.xpath("//ul[@class='typeahead dropdown-menu']/li"));
	 
	 list.get(1).findElement(By.xpath("a[@class='dropdown-item']")).click();
	 
	 Thread.sleep(5000);
	 
	 WebElement elem5 = driver.findElement(By.name("submit"));
	 elem5.click();
	 
	 Thread.sleep(50000);
	 }  
  
 @After  
 public void closePage(){  
	 driver.quit();  
	 } 

 } 