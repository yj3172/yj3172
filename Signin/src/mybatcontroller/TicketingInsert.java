package mybatcontroller;

import java.text.SimpleDateFormat;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybatmodel.action1;

import mybatmodel.ticketingvo;

public class TicketingInsert implements controller{
	static TicketingInsert imp1 = new TicketingInsert();
	public static TicketingInsert instance() {
		return imp1;
	}

@Override
public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
	// TODO Auto-generated method stub
	ticketingvo article = new ticketingvo();
	HttpSession session=request.getSession();

	String moviename=new String(request.getParameter("moviename").getBytes("8859_1"),"UTF-8");
	String date=request.getParameter("day");
	String cine=request.getParameter("cine");
	String cinema=new String(request.getParameter("cinema").getBytes("8859_1"),"UTF-8");
	String time=request.getParameter("time");
	String adult=request.getParameter("adult");
	String teen=request.getParameter("teen");
	String seat=request.getParameter("seat");
	System.out.println("´ñ±Û:"+seat);
	String id =(String) session.getAttribute("id");

	article.setAdult(adult);
	article.setCine(cine);
	article.setCinema(cinema);
	article.setDate(date);
	article.setId(id);
	article.setMoviename(moviename);
	article.setSeat(seat);
	article.setTeen(teen);
	article.setTime(time);
	
	request.setAttribute("article", article);

	action1 model = action1.instance();
	model.Tickertinsert(article);
	return "B_bookingfinish.jsp";
	
}


}