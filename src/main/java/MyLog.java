import cucumber.api.java.Before;
import cucumber.api.java.After;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.events.EventFiringWebDriver;
import org.slf4j.LoggerFactory;
import org.slf4j.Logger;
import java.util.concurrent.TimeUnit;

public class MyLog {

   public static WebDriver driver;
    public EventFiringWebDriver e_driver;
   private  static final Logger log = LoggerFactory.getLogger(MyLog.class);
@Before
    public  void openBrowser() {
        log.info("starting the browser");
       if (AutomationConstants.BROWSER_TYPE.toLowerCase().equals("chrome")) {
           System.setProperty("Webdriver.chrome.driver", "chromedriver");
           driver = new ChromeDriver();
           driver.manage().window().maximize();
           e_driver = new EventFiringWebDriver(driver);

       } else if (AutomationConstants.BROWSER_TYPE.toLowerCase().equals("firefox")) {
            System.setProperty("Webdriver.gecko.driver", "geckodriver");
            driver = new FirefoxDriver();
           e_driver = new EventFiringWebDriver(driver);
       }

        e_driver.get( AutomationConstants.URL);

        e_driver.manage().timeouts().implicitlyWait(AutomationConstants.MAX_TIMEOUTS, TimeUnit.SECONDS);

    }
@After
            public void closeBrowser () {
            log.info("close the browser");
            
        e_driver.quit();

            }


        }







