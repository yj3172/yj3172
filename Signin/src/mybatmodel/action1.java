package mybatmodel;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import Dto.CinemaVo;
import Dto.ScheduleVo;
import Dto.formoviejsp_vo;
import mybatconnect.map;
import Apicon.Navermovie;

public class action1 {
	static action1 model = new action1();
	public static action1 instance(){
		return model;
	}


	private SqlSessionFactory factory = map.getSqlSession();

	public List<commentdto> selectcomment(String boardnum){
		List<commentdto> list = null;
		String num =boardnum;
		SqlSession sqlSession = factory.openSession();
		list = sqlSession.selectList("selectcomment",num);
		
		sqlSession.close();
		return list;
	}
	
	public void insertcomment(commentdto li){
		
		SqlSession sqlSession = factory.openSession();
		sqlSession.insert("insertcomment",li);
		sqlSession.commit();
		sqlSession.close();
		
	}
	public void deletecomment(String li){
	//	System.out.println(li.getTitle());
		String deletecomment = li;
		SqlSession sqlSession = factory.openSession();
		sqlSession.delete("deletecomment",deletecomment);
		sqlSession.commit();
		sqlSession.close();
		
	}
	public void updatecomment(commentdto li){
	//	System.out.println(li.getTitle());
		SqlSession sqlSession = factory.openSession();
		sqlSession.update("updatecomment",li);
		sqlSession.commit();
		sqlSession.close();
		
	}
	//������� ��� ������ Ƽ����
	public String[] noseat(ticketingvo li){
		List<String> seat= null;
		String seatstr="";
		String [] seatsub = new String[10];
		SqlSession sqlSession = factory.openSession();
		seat = sqlSession.selectList("noseat",li);
	
	
		sqlSession.close();
		for(int i = 0 ; i<seat.size();i++) {
			seatstr += seat.get(i);
			
		}
		seatsub = seatstr.split("/");
		System.out.println(seatsub[0]);
		return seatsub;
		
	}
	
	public void Tickertinsert(ticketingvo li){
		
		SqlSession sqlSession = factory.openSession();
		sqlSession.insert("ticketinginsert",li);
		sqlSession.commit();
		sqlSession.close();
		
	}
	public List<CinemaVo> Cinemalist(String lo){
		
		SqlSession sqlSession = factory.openSession();
		String doo = lo;
		List<CinemaVo> a = sqlSession.selectList("cinemalist",doo);//�ߺ�����
	
		sqlSession.commit();
		sqlSession.close();
		return a;
		
	}
	public List<CinemaVo> Cinemalist(){
		
		SqlSession sqlSession = factory.openSession();
		
		List<CinemaVo> a = sqlSession.selectList("cinemaall");//�ߺ�����
	
		sqlSession.commit();
		sqlSession.close();
		return a;
		
	}
	public void Cinemainsert(CinemaVo li){
		
		SqlSession sqlSession = factory.openSession();

		List<CinemaVo> a = sqlSession.selectList("checkcinema",li);//�ߺ�����
		if(a.size()==0) {
	
		sqlSession.insert("cinemainsert",li);
		
		}
		sqlSession.commit();
		sqlSession.close();
		
	}
	public void Scheduleinsert(ScheduleVo li){
		
		SqlSession sqlSession = factory.openSession();
	
		List<CinemaVo> a = sqlSession.selectList("schedulecheck",li);//�ߺ�����
		if(a.size()==0) {
		sqlSession.insert("scheduleinsert",li);
		}
		sqlSession.commit();
		sqlSession.close();
		
	}
	public List<ScheduleVo> selectmovielist(String si,String sponsor){
		Calendar cal = Calendar.getInstance();
		 
		//���� �⵵, ��, ��
		int year = cal.get ( cal.YEAR );
		int month = cal.get ( cal.MONTH ) + 1 ;
		int date = cal.get ( cal.DATE ) ;
		int ranresource = 0;
		String s_month = month+"";
		String s_date = date+"";
		if(month<10) {
			s_month="0"+month;
		}
		if(date<10) {
			s_date ="0"+date;
		}
		
		String day = year+""+s_month+s_date;
		List<ScheduleVo> list = null;
		CinemaVo vo = new CinemaVo();
		vo.setSi(si);
		vo.setSponsor(sponsor);
		vo.setDate(day);
		SqlSession sqlSession = factory.openSession();
		list = sqlSession.selectList("selectschedule_article",vo);
		
		sqlSession.close();
		return list;
	}
	public List<ScheduleVo> selectmovielist_getdate(String si,String sponsor, String movie){
		List<ScheduleVo> list = null;
		formoviejsp_vo vo = new formoviejsp_vo();
		vo.setSi(si);
		vo.setSponsor(sponsor);
		vo.setMovie(movie);
		SqlSession sqlSession = factory.openSession();
		list = sqlSession.selectList("selectschedule_article_getdate",vo);
		
		sqlSession.close();
		return list;
	}
	public List<ScheduleVo> movielist(){
		
		SqlSession sqlSession = factory.openSession();
		
		List<ScheduleVo> a = sqlSession.selectList("movieall");//�ߺ�����
	
		sqlSession.commit();
		sqlSession.close();
		return a;
		
	}
	
	
}