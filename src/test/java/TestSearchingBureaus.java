package test.java;

import java.util.regex.Pattern;
import java.util.concurrent.TimeUnit;
import org.junit.*;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;
import org.openqa.selenium.*;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;

public class TestSearchingBureaus {
  private WebDriver driver;
  private String baseUrl;
  private boolean acceptNextAlert = true;
  private StringBuffer verificationErrors = new StringBuffer();

  @Before
  public void setUp() throws Exception {
    driver = new FirefoxDriver();
    baseUrl = "http://ec2-54-205-219-27.compute-1.amazonaws.com:8080/oigusportaal/";
    driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
  }

  @Test
  public void test2SearchingBureaus() throws Exception {
    driver.get(baseUrl + "/oigusportaal/");
    driver.findElement(By.linkText("Lahutus")).click();
    new Select(driver.findElement(By.name("regions"))).selectByVisibleText("Põhja-Eesti");
    new Select(driver.findElement(By.name("regions"))).selectByVisibleText("Lõuna-Eesti");
    new Select(driver.findElement(By.name("counties"))).selectByVisibleText("Valgamaa");
    new Select(driver.findElement(By.name("cities"))).selectByVisibleText("Valga");
    driver.findElement(By.id("searching")).click();
    new Select(driver.findElement(By.id("editRegion"))).selectByVisibleText("Põhja-Eesti");
    new Select(driver.findElement(By.id("editCounty"))).selectByVisibleText("Harjumaa");
    new Select(driver.findElement(By.id("editCounty"))).selectByVisibleText("Järvamaa");
    new Select(driver.findElement(By.id("editCity"))).selectByVisibleText("Paide");
    driver.findElement(By.name("Price")).click();
    driver.findElement(By.name("Date")).click();
    driver.findElement(By.id("searching")).click();
    driver.findElement(By.name("Price")).click();
    driver.findElement(By.name("Date")).click();
    driver.findElement(By.id("searching")).click();
    driver.findElement(By.linkText("Law abiding citizen")).click();
    driver.findElement(By.id("ui-accordion-accordion-header-1")).click();
    driver.findElement(By.id("ui-accordion-accordion-header-0")).click();
    driver.findElement(By.cssSelector("a > img")).click();
    driver.findElement(By.linkText("Erastamine")).click();
    driver.findElement(By.linkText("Kalevi Õigusbüroo")).click();
    driver.findElement(By.cssSelector("a > img")).click();
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
      return false;
    }
  }

  private boolean isAlertPresent() {
    try {
      driver.switchTo().alert();
      return true;
    } catch (NoAlertPresentException e) {
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
