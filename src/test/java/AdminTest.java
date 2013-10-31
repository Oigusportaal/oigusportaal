package test.java;

import java.util.regex.Pattern;
import java.util.concurrent.TimeUnit;
import org.junit.*;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;
import org.openqa.selenium.*;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;

public class AdminTest {
  private WebDriver driver;
  private String baseUrl;
  private boolean acceptNextAlert = true;
  private StringBuffer verificationErrors = new StringBuffer();

  @Before
  public void setUp() throws Exception {
    driver = new FirefoxDriver();
    baseUrl = "http://ec2-54-205-219-27.compute-1.amazonaws.com:8080/";
    driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
  }

  @Test
  public void testAdminDelaccount() throws Exception {
    driver.get(baseUrl + "/oigusportaal/BureauRegisterSuccess.jsp");
    driver.findElement(By.xpath("//div[@id='menu']/ul/li[3]/a/img")).click();
    driver.findElement(By.name("email")).clear();
    driver.findElement(By.name("email")).sendKeys("admin@admin.com");
    driver.findElement(By.name("password")).clear();
    driver.findElement(By.name("password")).sendKeys("9999");
    new Select(driver.findElement(By.name("userCategories"))).selectByVisibleText("Admin");
    driver.findElement(By.id("registering")).click();
    driver.findElement(By.xpath("//div[@id='wrapper']/div[2]/div/table/tbody/tr[11]/td[3]/a[2]/span")).click();
    driver.findElement(By.xpath("//div[@id='wrapper']/div[2]/div/table/tbody/tr[11]/td[3]/a/span")).click();
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
