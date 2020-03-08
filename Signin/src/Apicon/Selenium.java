package Apicon;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
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
    
    //ũ�Ѹ� �� URL
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
        try {
     
            //get page (= ���������� url�� �ּ�â�� ���� �� request �� �Ͱ� ����)
        	FluentWait<WebDriver> fluentWait = new FluentWait<WebDriver>(driver);
        	fluentWait.withTimeout(Duration.ofMinutes(10));        // FluentWait �ν��Ͻ��� ������ ��ٸ��� �ִ� �ð� (10�� ����)
        	fluentWait.pollingEvery(Duration.ofSeconds(10));


        
            driver.get(base_url);
            
           
            WebElement div = driver.findElement(By.className("owl-stage"));
            List<WebElement> posts = div.findElements(By.xpath(".//div/div/a/img"));
            for(int i=0;i<=posts.size();i++) {
            	li[i]=posts.get(i).getAttribute("src");
            	System.out.println(i+":"+li[i].toString());
            	saveImage(li[i].toString(),i);
            }
        } catch (Exception e) {
            
            e.printStackTrace();
        
        } finally {
 
            driver.close();
        }
        return li;
    }
    private void saveImage(String strUrl, int files) throws IOException {
    	 
        URL url = null;
        InputStream in = null;
        OutputStream out = null;
 
        try {
 
            url = new URL(strUrl);
 
            in = url.openStream();
            String rootPath = System.getProperty("user.dir");
            System.out.println("현재 프로젝트의 경로 : "+rootPath );

       
            String filename= rootPath+"/새 폴더 (2)/yj3172-master/Signin/WebContent/img/main"+files+".jpg";
            System.out.println(filename);
            out = new FileOutputStream(filename); //저장경로
 
            while(true){
                //이미지를 읽어온다.
                int data = in.read();
                if(data == -1){
                    break;
                }
                //이미지를 쓴다.
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
}
