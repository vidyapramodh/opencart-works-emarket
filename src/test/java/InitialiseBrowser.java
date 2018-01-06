import org.junit .After;
import org.junit.Before;
import org.junit .Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.concurrent.TimeUnit;

public class InitialiseBrowser {

    public static WebDriver driver;

    @Before
    public void openBrowser() {

        System.out.println("opening the browser");
        System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);

    }
    @Test
public void openCart() {
        driver.get("http://opencart.opencartworks.com/themes/so_emarket/layout4");
    }
    @After
    public void closeBrowser() {

        driver.quit();


    }
}