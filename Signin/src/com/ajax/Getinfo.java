package com.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import Dao.Ajaxdao;
import Dao.Dbaccess;
import Dto.formoviejsp_vo;

public class Getinfo extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String si = request.getParameter("si");
		String sponsor = request.getParameter("sponsor");
		String movie = request.getParameter("movie");
		Dbaccess da = new Dbaccess();
		System.out.println("연결확인"+si+sponsor+movie);
		
		String [] returnlist = da.getdate(sponsor, si, movie);
		
	
		JSONObject obj = new JSONObject();
		String json ="";
		json+="[";
		for(int i=0;i<returnlist.length;i++) {
			
			json+=	"{\"date\":\""+returnlist[i]+"\"}";
			if(i!=returnlist.length-1) {
				json+=",";
			}
					
			
		}
		json+="]";
		
		 response.setContentType("application/json");
         response.setCharacterEncoding("UTF-8");
		 try {
             //ajax로 리턴해주는 부분
             response.getWriter().write(json);
		 } catch (IOException e) {
             e.printStackTrace();
         }
		System.out.println(json);

	}
	

}
