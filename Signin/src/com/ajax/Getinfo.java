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
import Dto.CinemaVo;
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
		
		System.out.println("연결확인"+si+sponsor+movie);
		
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
			
			
		}else if (command.equals("getcine")) {		

			ArrayList<CinemaVo> list = da.getcine(movie);
			Navermovie na = new Navermovie();
			String poster=na.movieposter(movie);
			for(int i=0;i<list.size();i++) {
				JSONObject j_obj = new JSONObject();
				j_obj.put("doo", list.get(i).getDoo());
				j_obj.put("si", list.get(i).getSi());
				j_obj.put("sponsor", list.get(i).getSponsor());
				
				j_array.add(j_obj);			
			}
			JSONObject j_obj = new JSONObject();
			j_obj.put("poster", poster);
			j_array.add(j_obj);
			
			
		}
		
		 response.setContentType("application/json");
         response.setCharacterEncoding("UTF-8");
		 try {
             //ajax로 리턴해주는 부분
			 if(command.equals("getdate")) {
				 response.getWriter().write(json);
			 }else if(command.equals("gettime")||command.equals("getcine")) {
				 response.getWriter().write(j_array.toString());
			 }
			 
		 } catch (IOException e) {
             e.printStackTrace();
         }
	

	}
	

}
