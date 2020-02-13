package mybatmodel;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatconnect.map;

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
}