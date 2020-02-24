package com.ajax;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Apicon.Navermovie;
import Dao.Ajaxdao;
import Dao.Dbaccess;
import Dto.ScheduleVo;
import Dto.formoviejsp_vo;

public class Getinfo extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String si = request.getParameter("si");
		String sponsor = request.getParameter("sponsor");
		String movie = request.getParameter("movie");
		String command= request.getParameter("command");
		JSONArray j_array= new  JSONArray();
		
		String json ="";
		
		Dbaccess da = new Dbaccess();
		String [] returnlist ;
		ArrayList<ScheduleVo> return_array;
		
		System.out.println("����Ȯ��"+si+sponsor+movie);
		
		if(command.equals("getdate")) {
			Navermovie na = new Navermovie();
			String poster=na.movieposter(movie);
		returnlist = da.getdate(sponsor, si, movie);
		
		json+="[";
		for(int i=0;i<returnlist.length;i++) {
			
			json+=	"{\"date\":\""+returnlist[i]+"\"},";						
		}
		json+=	"{\"poster\":\""+poster+"\"}";
		json+="]";
		}else if (command.equals("gettime")) {
			String date = request.getParameter("date");
			return_array=new ArrayList<>();
			
			return_array = da.gettime(sponsor, si , movie , date);
			
			for(int i=0;i<return_array.size();i++) {
				JSONObject j_obj = new JSONObject();
				j_obj.put("cine", return_array.get(i).getCine());
				j_obj.put("schedule", return_array.get(i).getSchedule());
				j_array.add(j_obj);			
				System.out.println(j_obj.toString());
			}
			
			
		}
		
		 response.setContentType("application/json");
         response.setCharacterEncoding("UTF-8");
		 try {
             //ajax�� �������ִ� �κ�
			 if(command.equals("getdate")) {
				 response.getWriter().write(json);
			 }else if(command.equals("gettime")) {
				 response.getWriter().write(j_array.toString());
			 }
			 
		 } catch (IOException e) {
             e.printStackTrace();
         }
	

	}
	

}
