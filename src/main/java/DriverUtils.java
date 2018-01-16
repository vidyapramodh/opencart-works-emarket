import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.events.EventFiringWebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DriverUtils {
    //public static WebDriver driver;
    public  EventFiringWebDriver webDriver;
    public  String browserName = "chrome";
    public final String FIREFOX = "firefox";
    public final String IE = "InternetExplorer";

    private static  String OS = System.getProperty("os.name").toLowerCase();
    private static final Logger LOGGER = LoggerFactory.getLogger(DriverUtils.class);
    private static String userPath = System.getProperty("user.dir");

    @Before

    public void setBrowser() {

        if (webDriver == null) {
            if (AutomationConstants.BROWSER_TYPE.equals("chrome")) {
                LOGGER.info("starting the Browser");
                setdriverPathForBrowser();

                if (isLinux()) {
                    ChromeOptions options = new ChromeOptions();
                    options.setBinary(userPath + "/src/test/resources/drivers/Linux/google-chrome-stable_current_amd64.deb");
                    webDriver = new EventFiringWebDriver(new ChromeDriver(options));
                } else {
                    webDriver = new EventFiringWebDriver(new ChromeDriver());
                    webDriver.get(AutomationConstants.URL);




                }
            }
        }
    }
            public void setdriverPathForBrowser()
            {

                if (browserName.equals("chrome")) {
                    if (isMac()) {
                        System.setProperty("webdriver.chrome.driver", userPath + "/src/test/resources/drivers/MAC/chromedriver");
                    } else if (isLinux()) {
                        System.setProperty("webdriver.chrome.driver", userPath + "/src/test/resources/drivers/Ubuntu/chromedriver");
                    } else if (isWindows()) {

                        System.setProperty("webdriver.chrome.driver", userPath+"/src/test/resources/WindowsDrivers/chromedriver.exe");
                    }
                } else if (browserName.equals("Firefox")) {
                    if (isMac()) {
                        System.setProperty("webdriver.gecko.driver", userPath + "/src/test/resources/drivers/MAC/geckodriver");
                    } else if (isLinux()) {
                        System.setProperty("webdriver.gecko.driver", userPath + "/src/test/resources/drivers/Ubuntu/geckodriver");
                    } else if (isWindows()) {

                        System.setProperty("webdriver.gecko.driver", userPath+"/src/test/resources/WindowsDrivers/chromedriver.exe");

                    }

                }
            }

        private static boolean  isWindows()

        {
            return (OS.indexOf("windows") >= 0);

        }
        private static boolean isMac()
        {
            return (OS.indexOf("mac") >= 0);
        }
        private static  boolean isLinux()
        {
            return (OS.indexOf("linux") >= 0);


        }

        @After
        public void closeBrowser(){
            webDriver.quit();
        }

    }








