package Dao;

import static Eventdb.javautil.close;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import Dto.Store_list_dto;
import Dto.formoviejsp_vo;

public class Ajaxdao{
	DataSource ds;
	Connection con;
	private static Ajaxdao Ajaxdao;
	
	public Ajaxdao() {
	}


	public static Ajaxdao getInstance(){  //�깃��� 媛�泥댁����
		if(Ajaxdao == null){
			Ajaxdao = new Ajaxdao();
		}
		return Ajaxdao;
	}

	public void setConnection(Connection con){  //��鍮� �곌껐
		this.con = con;
	}
	
	public String[] getdate(String sponsor, String si , String movie){
			String[] articlelist = null ;
			
			Statement stmt = null;
			ResultSet rs = null;
			String sql="SELECT date FROM schedule where cinecode=(select num from cinema where sponsor = \'"+sponsor+"\' and si= \'"+si+"\') and movie= \'"+movie+"\';";
			if(con==null) {
				System.out.println("ㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴ");
			}
			try{
				stmt = con.createStatement();
				
				rs = stmt.executeQuery(sql);
				System.out.println(rs+"11111111111111111111");
				int i= 0;
				while(rs.next()){
					
	
					articlelist[i]=rs.getString("date");
					System.out.println(articlelist[i]+"입력");
					i++;
				}

			}catch(Exception ex){
			}finally{
	
				close(stmt);
			}
		
		
		return articlelist;
		
	}

		
}
