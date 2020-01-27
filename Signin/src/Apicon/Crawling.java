package Apicon;



import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public class Crawling {
	
	public String naverPoster(String url){
		String jpg = "";
		Element a = null ;
		System.out.println("변경: "+url);
		try {
			Document doc = Jsoup.connect(url).get();
			a=doc.select("#targetImage").get(0);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("크롤링:"+a.toString());
		jpg = a.getElementsByAttribute("src").attr("src");
		System.out.println("최종:"+jpg);
		return jpg;
	}
	
}
