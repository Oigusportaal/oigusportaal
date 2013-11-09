package test.java;

import java.util.regex.Pattern;
import java.util.concurrent.TimeUnit;
import org.junit.*;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;
import org.openqa.selenium.*;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;

public class RegisterTest {
  private WebDriver driver;
  private String baseUrl;
  private boolean acceptNextAlert = true;
  private StringBuffer verificationErrors = new StringBuffer();

  @Before
  public void setUp() throws Exception {
    driver = new FirefoxDriver();
    baseUrl = "http://ec2-54-226-188-89.compute-1.amazonaws.com:8080/";
    driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
  }

  @Test
  public void testRegister() throws Exception {
    driver.get(baseUrl + "/oigusportaal/");
    driver.findElement(By.xpath("//div[@id='menu']/ul/li[3]/a/img")).click();
    driver.findElement(By.linkText("Registreeru")).click();
    driver.findElement(By.id("registerEmail")).clear();
    driver.findElement(By.id("registerEmail")).sendKeys("h3l3n@hot.ee");
    driver.findElement(By.id("registerEmailConfirmation")).clear();
    driver.findElement(By.id("registerEmailConfirmation")).sendKeys("h3l3n@hot.ee");
    driver.findElement(By.id("registerPassword")).clear();
    driver.findElement(By.id("registerPassword")).sendKeys("a");
    driver.findElement(By.id("registerPassword")).clear();
    driver.findElement(By.id("registerPassword")).sendKeys("123456");
    driver.findElement(By.id("registerPassword")).clear();
    driver.findElement(By.id("registerPassword")).sendKeys("123abc");
    driver.findElement(By.id("registerPasswordConfirmation")).clear();
    driver.findElement(By.id("registerPasswordConfirmation")).sendKeys("123abc");
    driver.findElement(By.id("registerBureauName")).clear();
    driver.findElement(By.id("registerBureauName")).sendKeys("Selenium");
    driver.findElement(By.id("registerRegcode")).clear();
    driver.findElement(By.id("registerRegcode")).sendKeys("123");
    driver.findElement(By.id("registerStreetAddress")).clear();
    driver.findElement(By.id("registerStreetAddress")).sendKeys("test");
    driver.findElement(By.id("registerPostalcode")).clear();
    driver.findElement(By.id("registerPostalcode")).sendKeys("123");
    driver.findElement(By.id("registerPhone")).clear();
    driver.findElement(By.id("registerPhone")).sendKeys("123");
    new Select(driver.findElement(By.id("registerRegion"))).selectByVisibleText("Põhja-Eesti");
    new Select(driver.findElement(By.id("registerRegion"))).selectByVisibleText("Lõuna-Eesti");
    new Select(driver.findElement(By.id("registerCounty"))).selectByVisibleText("Tartumaa");
    new Select(driver.findElement(By.id("registerCity"))).selectByVisibleText("Tartu");
    driver.findElement(By.id("Registreeru")).click();
    driver.findElement(By.id("registerRegcode")).clear();
    driver.findElement(By.id("registerRegcode")).sendKeys("12345678");
    driver.findElement(By.id("registerPostalcode")).clear();
    driver.findElement(By.id("registerPostalcode")).sendKeys("12345");
    driver.findElement(By.id("Registreeru")).click();
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
