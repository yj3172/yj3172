package Apicon;



import java.io.IOException;
import java.util.ArrayList;

import Dto.megaboxdata;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

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
	
	public ArrayList<megaboxdata> getmega(){
		String jpg="";
		megaboxdata article=null; 
		ArrayList<megaboxdata> mega =new ArrayList<megaboxdata>();
		Elements a = null ;
		Elements text = null;
		try {
			Document doc = Jsoup.connect("http://www.megabox.co.kr/").get();
			a=doc.select(".sm_mv_bg");
			text=doc.select(".sm_mv_text");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(a.html());
		
		for(Element el : text.select("strong")){
			article = new megaboxdata();
			System.out.println(el.text());
			article.setSpan(el.text());
			mega.add(article);
		}
		for(Element el : a){
			megaboxdata articlenext = new megaboxdata();
			int k=0;
			jpg=el.getElementsByAttribute("style").attr("style");
			System.out.println(jpg.substring(22,113));
			articlenext.setSpan(mega.get(k).getSpan());
			articlenext.setImg(jpg.substring(22,113));
			mega.add(articlenext);
			k++;
		}
		
		return mega;
		
	}
	
}
