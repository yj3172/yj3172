package Apicon;


<<<<<<< HEAD
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
=======
>>>>>>> 91014054ab160c797efcd70b841189f7af4a5a67
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
    
<<<<<<< HEAD
    //Å©ï¿½Ñ¸ï¿½ ï¿½ï¿½ URL
=======
    //Å©·Ñ¸µ ÇÒ URL
>>>>>>> 91014054ab160c797efcd70b841189f7af4a5a67
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
<<<<<<< HEAD
        try {
     
            //get page (= ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ urlï¿½ï¿½ ï¿½Ö¼ï¿½Ã¢ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ request ï¿½ï¿½ ï¿½Í°ï¿½ ï¿½ï¿½ï¿½ï¿½)
        	FluentWait<WebDriver> fluentWait = new FluentWait<WebDriver>(driver);
        	fluentWait.withTimeout(Duration.ofMinutes(10));        // FluentWait ï¿½Î½ï¿½ï¿½Ï½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ù¸ï¿½ï¿½ï¿½ ï¿½Ö´ï¿½ ï¿½Ã°ï¿½ (10ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½)
        	fluentWait.pollingEvery(Duration.ofSeconds(10));


        
=======
          JavascriptExecutor js = (JavascriptExecutor)driver;
        try {
     
            //get page (= ºê¶ó¿ìÀú¿¡¼­ urlÀ» ÁÖ¼ÒÃ¢¿¡ ³ÖÀº ÈÄ request ÇÑ °Í°ú °°´Ù)
        	FluentWait<WebDriver> fluentWait = new FluentWait<WebDriver>(driver);
        	fluentWait.withTimeout(Duration.ofMinutes(10));        // FluentWait ÀÎ½ºÅÏ½º°¡ Á¶°ÇÀ» ±â´Ù¸®´Â ÃÖ´ë ½Ã°£ (10ºÐ ¼³Á¤)
        	fluentWait.pollingEvery(Duration.ofSeconds(10));


        	ÃâÃ³: https://pasudo123.tistory.com/101 [Contact 1997]
>>>>>>> 91014054ab160c797efcd70b841189f7af4a5a67
            driver.get(base_url);
            
           
            WebElement div = driver.findElement(By.className("owl-stage"));
            List<WebElement> posts = div.findElements(By.xpath(".//div/div/a/img"));
            for(int i=0;i<=posts.size();i++) {
            	li[i]=posts.get(i).getAttribute("src");
            	System.out.println(i+":"+li[i].toString());
<<<<<<< HEAD
            	saveImage(li[i].toString(),i);
=======
>>>>>>> 91014054ab160c797efcd70b841189f7af4a5a67
            }
        } catch (Exception e) {
            
            e.printStackTrace();
        
        } finally {
 
            driver.close();
        }
        return li;
    }
<<<<<<< HEAD
    private void saveImage(String strUrl, int files) throws IOException {
    	 
        URL url = null;
        InputStream in = null;
        OutputStream out = null;
 
        try {
 
            url = new URL(strUrl);
 
            in = url.openStream();
            String rootPath = System.getProperty("user.dir");
            System.out.println("í˜„ìž¬ í”„ë¡œì íŠ¸ì˜ ê²½ë¡œ : "+rootPath );

       
            String filename= rootPath+"/ìƒˆ í´ë” (2)/yj3172-master/Signin/WebContent/img/main"+files+".jpg";
            System.out.println(filename);
            out = new FileOutputStream(filename); //ì €ìž¥ê²½ë¡œ
 
            while(true){
                //ì´ë¯¸ì§€ë¥¼ ì½ì–´ì˜¨ë‹¤.
                int data = in.read();
                if(data == -1){
                    break;
                }
                //ì´ë¯¸ì§€ë¥¼ ì“´ë‹¤.
                out.write(data);
 
            }
 
            in.close();
            out.close();
 
        } catch (Exception e) {
 
            e.printStackTrace();
 
        }finally{
 
            if(in != null){in.close();}
            if(out != null){out.close();}
 
        }
    }
=======
>>>>>>> 91014054ab160c797efcd70b841189f7af4a5a67
}
