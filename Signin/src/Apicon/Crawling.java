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
	
	public String navermovieinfo(String url){
		String text = "";
		Element a = null ;

		try {
			Document doc = Jsoup.connect(url).get();
			a=doc.select(".con_tx").get(0);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		text = a.html();
		return text;
	}
	public String[] naveractorimage(String url){
		String[] jpglist = new String[6];
		Elements a = null ;

		try {
			Document doc = Jsoup.connect(url).get();
			a=doc.select(".thumb_people img");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			for(int i= 0 ;i<a.size();i++) {
		jpglist[i]=a.get(i).getElementsByAttribute("src").attr("src").toString();
			}
		return jpglist;
	}
	public String[] naveractorname(String url){
		String[] actorlist = new String[6];
		Elements a = null ;

		try {
			Document doc = Jsoup.connect(url).get();
			a=doc.select(".tx_people");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			for(int i= 0 ;i<a.size();i++) {
		actorlist[i]=a.get(i).text();
			}
		return actorlist;
	}
	
	
	public String navermovievideo(String url){
		String video = "";
		Element a = null ;
		String viaurl = "";
		try {
			Document doc = Jsoup.connect(url).get();
			a=doc.select(".video_obj").get(0);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 viaurl = a.getElementsByAttribute("href").attr("href");
		 
		 try {
				Document doc = Jsoup.connect(viaurl).get();
				a=doc.select(".video_obj").get(0);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return  video;
	}
	
}
