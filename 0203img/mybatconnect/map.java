package mybatconnect;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class map {
	private static SqlSessionFactory sqlSession;
	public static SqlSessionFactory getSqlSession(){
		return sqlSession;
	}

	static{
		try {
			String resource = "mybatconnect/conn.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			SqlSessionFactoryBuilder factory = new SqlSessionFactoryBuilder();
			sqlSession = factory.build(reader);
		} catch (Exception e) {
			System.out.println("SqlMapConfig err : " + e);
		}
	}
}

