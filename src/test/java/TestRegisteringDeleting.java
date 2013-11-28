package test.java;

import java.util.concurrent.TimeUnit;

import org.junit.*;

import static org.junit.Assert.*;


import org.openqa.selenium.*;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;

public class TestRegisteringDeleting {
  private WebDriver driver;
  private String baseUrl;
  private boolean acceptNextAlert = true;
  private StringBuffer verificationErrors = new StringBuffer();

  @Before
  public void setUp() throws Exception {
    driver = new FirefoxDriver();
    baseUrl = "http://ec2-54-205-219-27.compute-1.amazonaws.com:8080";
    driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
  }

  @Test
  public void test1RegisteringDeleting() throws Exception {
    driver.get(baseUrl + "/oigusportaal/");
    driver.findElement(By.xpath("//div[@id='menu']/ul/li[3]/a/img")).click();
    driver.findElement(By.linkText("Registreeru")).click();
    driver.findElement(By.id("registerEmail")).clear();
    driver.findElement(By.id("registerEmail")).sendKeys("h3l3n@hot.ee");
    driver.findElement(By.id("registerEmailConfirmation")).clear();
    driver.findElement(By.id("registerEmailConfirmation")).sendKeys("h3l3n@hot.ee");
    driver.findElement(By.id("registerPassword")).clear();
    driver.findElement(By.id("registerPassword")).sendKeys("123abc");
    driver.findElement(By.id("registerPasswordConfirmation")).clear();
    driver.findElement(By.id("registerPasswordConfirmation")).sendKeys("123abc");
    driver.findElement(By.id("registerBureauName")).clear();
    driver.findElement(By.id("registerBureauName")).sendKeys("SeleniumIDE");
    driver.findElement(By.id("registerRegcode")).clear();
    driver.findElement(By.id("registerRegcode")).sendKeys("32456234");
    driver.findElement(By.id("registerStreetAddress")).clear();
    driver.findElement(By.id("registerStreetAddress")).sendKeys("Riia");
    driver.findElement(By.id("registerPostalcode")).clear();
    driver.findElement(By.id("registerPostalcode")).sendKeys("45634");
    driver.findElement(By.id("registerPhone")).clear();
    driver.findElement(By.id("registerPhone")).sendKeys("36673454");
    new Select(driver.findElement(By.id("registerRegion"))).selectByVisibleText("Lääne-Eesti");
    new Select(driver.findElement(By.id("registerCounty"))).selectByVisibleText("Hiiumaa");
    new Select(driver.findElement(By.id("registerCity"))).selectByVisibleText("Kärdla");
    driver.findElement(By.id("Registreeru")).click();
    driver.findElement(By.xpath("//div[@id='menu']/ul/li[3]/a/img")).click();
    driver.findElement(By.name("email")).clear();
    driver.findElement(By.name("email")).sendKeys("admin@admin.com");
    driver.findElement(By.name("password")).clear();
    driver.findElement(By.name("password")).sendKeys("9999");
    driver.findElement(By.cssSelector("input.button")).click();
    driver.findElement(By.linkText("Activate SeleniumIDE")).click();
    driver.findElement(By.xpath("//div[@id='menu']/ul/li[3]/a/img")).click();
    driver.findElement(By.name("email")).clear();
    driver.findElement(By.name("email")).sendKeys("h3l3n@hot.ee");
    driver.findElement(By.name("password")).clear();
    driver.findElement(By.name("password")).sendKeys("123abc");
    driver.findElement(By.cssSelector("input.button")).click();
    driver.findElement(By.id("lawyer")).click();
    driver.findElement(By.id("newName")).clear();
    driver.findElement(By.id("newName")).sendKeys("Esimene Karu");
    driver.findElement(By.id("newEmail")).clear();
    driver.findElement(By.id("newEmail")).sendKeys("esimene@karu.ee");
    driver.findElement(By.id("addEdit")).click();
    driver.findElement(By.id("lawyer")).click();
    driver.findElement(By.id("newName")).clear();
    driver.findElement(By.id("newName")).sendKeys("Teine Karu");
    driver.findElement(By.id("newEmail")).clear();
    driver.findElement(By.id("newEmail")).sendKeys("teine@karu.ee");
    driver.findElement(By.id("addEdit")).click();
    driver.findElement(By.xpath("(//input[@id='lawyer'])[3]")).click();
    driver.findElement(By.id("newEmail")).clear();
    driver.findElement(By.id("newEmail")).sendKeys("karu@selenium.ee");
    driver.findElement(By.id("addEdit")).click();
    driver.findElement(By.cssSelector("#storyAdd > #lawyer")).click();
    driver.findElement(By.id("newParticipants")).clear();
    driver.findElement(By.id("newParticipants")).sendKeys("kaks karu");
    driver.findElement(By.id("newReference")).clear();
    driver.findElement(By.id("newReference")).sendKeys("www.google.ee");
    driver.findElement(By.id("datepicker")).clear();
    driver.findElement(By.id("datepicker")).sendKeys("11/04/2013");
    driver.findElement(By.id("countable1")).click();
    driver.findElement(By.id("countable1")).clear();
    driver.findElement(By.id("countable1")).sendKeys("Kaks karu läksid kaklema, kes saab suurema koopa.");
    driver.findElement(By.xpath("(//input[@name='fields'])[9]")).click();
    driver.findElement(By.id("addEdit")).click();
    driver.findElement(By.id("backButton")).click();
    driver.findElement(By.id("profileBureauAddress")).clear();
    driver.findElement(By.id("profileBureauAddress")).sendKeys("Koopa 2");
    driver.findElement(By.id("avgPrice")).clear();
    driver.findElement(By.id("avgPrice")).sendKeys("55");
    driver.findElement(By.id("cbox9")).click();
    driver.findElement(By.id("cbox8")).click();
    driver.findElement(By.id("cbox7")).click();
    driver.findElement(By.id("cbox6")).click();
    driver.findElement(By.id("searchingEdit")).click();
    driver.findElement(By.cssSelector("#lawyerProfile > #lawyer")).click();
    driver.findElement(By.id("delete")).click();
    driver.findElement(By.xpath("//div[@id='menu']/ul/li[3]/a/img")).click();
    driver.findElement(By.name("email")).clear();
    driver.findElement(By.name("email")).sendKeys("admin@admin.com");
    driver.findElement(By.name("password")).clear();
    driver.findElement(By.name("password")).sendKeys("9999");
    driver.findElement(By.cssSelector("input.button")).click();
    driver.findElement(By.linkText("Delete SeleniumIDE")).click();
  }

  @After
  public void tearDown() throws Exception {
    driver.quit();
    String verificationErrorString = verificationErrors.toString();
    if (!"".equals(verificationErrorString)) {
      fail(verificationErrorString);
    }
  }

  private boolean isElementPresent(By by) {
    try {
      driver.findElement(by);
      return true;
    } catch (NoSuchElementException e) {
    	e.printStackTrace();
      return false;
    }
  }

  private boolean isAlertPresent() {
    try {
      driver.switchTo().alert();
      return true;
    } catch (NoAlertPresentException e) {
    	e.printStackTrace();
      return false;
    }
  }

  private String closeAlertAndGetItsText() {
    try {
      Alert alert = driver.switchTo().alert();
      String alertText = alert.getText();
      if (acceptNextAlert) {
        alert.accept();
      } else {
        alert.dismiss();
      }
      return alertText;
    } finally {
      acceptNextAlert = true;
    }
  }
}
