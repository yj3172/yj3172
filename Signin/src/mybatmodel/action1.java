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
		System.out.println("보드넘버"+boardnum);
		SqlSession sqlSession = factory.openSession();
		System.out.println("보드넘버"+boardnum);
		list = sqlSession.selectList("selectcomment",num);
		
		sqlSession.close();
		return list;
	}
	
	public void Insert(commentdto li){
		
		SqlSession sqlSession = factory.openSession();
		sqlSession.insert("insert",li);
		sqlSession.commit();
		sqlSession.close();
		
	}
	public void delete(commentdto li){
	//	System.out.println(li.getTitle());
		SqlSession sqlSession = factory.openSession();
		sqlSession.delete("delete",li);
		sqlSession.commit();
		sqlSession.close();
		
	}
	public void update(commentdto li){
	//	System.out.println(li.getTitle());
		SqlSession sqlSession = factory.openSession();
		sqlSession.update("update",li);
		sqlSession.commit();
		sqlSession.close();
		
	}
}