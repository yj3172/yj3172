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
		System.out.println("蹂�寃�: "+url);
		try {
			Document doc = Jsoup.connect(url).get();
			a=doc.select("#targetImage").get(0);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		jpg = a.getElementsByAttribute("src").attr("src");

		return jpg;
	}
	
	public ArrayList<megaboxdata> getmega(){
		String jpg="";
		ArrayList<megaboxdata> mega =new ArrayList<megaboxdata>();
		Elements a = null ;
		try {
			Document doc = Jsoup.connect("https://www.lottecinema.co.kr/NLCHS").get();
			a= doc.select("a");
			System.out.println(doc.html());
			if(doc==null) {
				System.out.println("ssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
			}
			if(a==null) {
				System.out.println("a없다");
			}
			System.out.println(a.html());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for(Element el : a){
			megaboxdata articlenext = new megaboxdata();
		
			jpg=el.getElementsByAttribute("src").attr("src");
			System.out.println("???");
			System.out.println(jpg);
			articlenext.setImg(jpg);
			mega.add(articlenext);
		}
		
		return mega;
		
	}
	
}
