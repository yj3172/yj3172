package Apicon;


import java.time.Duration;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.stream.Stream;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.FluentWait;

public class Selenium {
	 //WebDriver
    private WebDriver driver ;
    
    //Properties
    public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
    public static final String WEB_DRIVER_PATH = "D:\\selenium\\chromedriver_win32\\chromedriver.exe";
    
    //크롤링 할 URL
    private String base_url ;
    
    public Selenium() {
    	
        super();
        ChromeOptions chromeOptions = new ChromeOptions();
        
        chromeOptions.setCapability("--ignoreProtectedModeSettings", true);

        chromeOptions.addArguments("--headless"); 
        chromeOptions.addArguments("--no-sandbox");
        chromeOptions.addArguments("--disable-gpu");
        chromeOptions.addArguments("--disable-cookies");
        chromeOptions.addArguments("disable-infobars");
        chromeOptions.addArguments("--disable-extensions");
        
        DesiredCapabilities capabilities = DesiredCapabilities.chrome();
        capabilities.setCapability(ChromeOptions.CAPABILITY, chromeOptions);
        capabilities.setCapability("pageLoadStrategy", "none");


        //System Property SetUp
        System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
        
        //Driver SetUp
        driver = new ChromeDriver(chromeOptions);
      
        base_url = "https://www.lottecinema.co.kr/NLCHS";
    }
    public String[] crawl()  {
          String[] li = new String[4];
          JavascriptExecutor js = (JavascriptExecutor)driver;
        try {
     
            //get page (= 브라우저에서 url을 주소창에 넣은 후 request 한 것과 같다)
        	FluentWait<WebDriver> fluentWait = new FluentWait<WebDriver>(driver);
        	fluentWait.withTimeout(Duration.ofMinutes(10));        // FluentWait 인스턴스가 조건을 기다리는 최대 시간 (10분 설정)
        	fluentWait.pollingEvery(Duration.ofSeconds(10));


        	출처: https://pasudo123.tistory.com/101 [Contact 1997]
            driver.get(base_url);
            
           
            WebElement div = driver.findElement(By.className("owl-stage"));
            List<WebElement> posts = div.findElements(By.xpath(".//div/div/a/img"));
            for(int i=0;i<=posts.size();i++) {
            	li[i]=posts.get(i).getAttribute("src");
            	System.out.println(i+":"+li[i].toString());
            }
        } catch (Exception e) {
            
            e.printStackTrace();
        
        } finally {
 
            driver.close();
        }
        return li;
    }
}
