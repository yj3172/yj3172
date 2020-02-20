package CinemaInsert;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import Apicon.Boxoffice;
import Dto.BoxOfficeDto;
import Dto.CinemaVo;
import Dto.ScheduleVo;
import mybatmodel.action1;
public class Insertcinema {
	String [] locate_do = {"서울","경기","충청","강원","전라","경상","제주"};
	
	String [] locate_si_seoul = {"송파","은평","금천","종로","강서","강남","강동","동대문","마포","서대문"};
	String [] locate_si_gyeonggi = {"성남","안양","구리","수원","남양주","용인","안산","고양","부천","시흥"};
	String [] locate_si_choungchung = {"논산","세종","익산","공주","충주","청주","서산","천안","제천","단양"};
	String [] locate_si_gangwon = {"춘천","강릉","원주","태백","화천","철원","평창"};
	String [] locate_si_jeonra = {"광주","나주","영광","함평","해남","전주","군산"};
	String [] locate_si_gyeongsang = {"부산","거제","진주","양산","대구","울산","포항"};
	String [] locate_si_jeju = {"제주","서귀포"};
	String [] sponsor = {"메가박스","롯데시네마","CGV"};
	String [] engrow = {"I","J","K","L","N","M","O","P","Q"};
	
	
	public ArrayList<CinemaVo> getCine(int howmany) {
		Random ran = new Random();
		action1 act =new action1();
		ArrayList<CinemaVo> articlelist = new ArrayList<CinemaVo>();
		
		for(int c=0;c<howmany;c++) {
			for(int i=0;i<7;i++) {
				CinemaVo article = new CinemaVo();
				article.setDoo(locate_do[i]);
				if(i==0) {
					int si = ran.nextInt(locate_si_seoul.length);
					article.setSi(locate_si_seoul[si]);
				}else if(i==1) {
					int si = ran.nextInt(locate_si_gyeonggi.length);
					article.setSi(locate_si_gyeonggi[si]);
					
				}else if(i==2) {
					int si = ran.nextInt(locate_si_choungchung.length);
					article.setSi(locate_si_choungchung[si]);
					
				}else if(i==3) {
					int si = ran.nextInt(locate_si_gangwon.length);
					article.setSi(locate_si_gangwon[si]);
					
				}else if(i==4) {
					int si = ran.nextInt(locate_si_jeonra.length);
					article.setSi(locate_si_jeonra[si]);
					
				}else if(i==5) {
					int si = ran.nextInt(locate_si_gyeongsang.length);
					article.setSi(locate_si_gyeongsang[si]);
					
				}else if(i==6) {
					int si = ran.nextInt(locate_si_jeju.length);
					article.setSi(locate_si_jeju[si]);
					
				}
				int cine = ran.nextInt(5)+5;
				article.setCine(cine+"");
				
				int spon = ran.nextInt(sponsor.length);
				article.setSponsor(sponsor[spon]);
				String movieinfo = "";
				//도 시 영화관까지
				for (int t=1;t<=cine ;t++) {
				int row = ran.nextInt(5)+10;
				int eng = ran.nextInt(engrow.length);
				movieinfo += engrow[eng]+row+"/";
				}
				article.setCineinfo(movieinfo);
				articlelist.add(article);
			
				act.Cinemainsert(article);
			}
		}
		return articlelist;
	}
	
	public void scheduleinsert() {
		Random ran = new Random();
		action1 act =new action1();
		List<CinemaVo> li =act.Cinemalist();
		ScheduleVo schvo = new ScheduleVo();
		Boxoffice box = new Boxoffice();
		
		
		
		ArrayList<BoxOfficeDto> boxoffice = box.boxofficelist();
		
		for(int i= 0 ;i<li.size();i++) {
			schvo.setCinecode(li.get(i).getNum());
			String cine="";
			String schedule="";
			int movieran = ran.nextInt(boxoffice.size());
			schvo.setMovie(boxoffice.get(movieran).getMovieNm());
	 
			
			int howmanycine = ran.nextInt(Integer.parseInt(li.get(i).getCine()))+1;
			System.out.println(howmanycine);
			for(int k=0;k<howmanycine;k++) {
				int cineran = ran.nextInt(Integer.parseInt(li.get(i).getCine()))+1;
				while(cine.contains(cineran+"")) {
					cineran = ran.nextInt(Integer.parseInt(li.get(i).getCine()))+1;
				}
				cine+=cineran+"/";
			}
			schvo.setCine(cine);
			String[] timetable = {"09:30","11:00","13:00","15:00","17:00","19:20","21:40","23:10"};
			for(int j= 0;j<howmanycine;j++) {
				for(int ma = 0;ma <ran.nextInt(3)+3;ma++) {
				int timeran =ran.nextInt(timetable.length);
				schedule += timetable[timeran]+"#";
				}
				schedule += "/";
			}
			schvo.setSchedule(schedule);
			Calendar cal = Calendar.getInstance();
			 
			//현재 년도, 월, 일
			int year = cal.get ( cal.YEAR );
			int month = cal.get ( cal.MONTH ) + 1 ;
			int date = cal.get ( cal.DATE ) ;
			int ranresource = 0;
			String smonth ="";
			if(month==2) {
				ranresource=27;
			}else if(month==1||month==3||month==5||month==7||month==8||month==10||month==12) {
				ranresource=30;
				
			}else if (month==4||month==6||month==9||month==11) {
				ranresource=29;
			}
			if(month<10) {
				smonth  = "0"+month;
			}
			int randate =ran.nextInt(ranresource)+1;
			while(randate<date) {
				randate =ran.nextInt(ranresource)+1;
			}
			String bookingday= year+""+smonth+""+randate+"";
			schvo.setDate(bookingday);
			System.out.println(schvo.getMovie()+cine+"관"+schedule+"날짜"+schvo.getDate());
			act.Scheduleinsert(schvo);
			
			
		}
		
		
	}

	
}
