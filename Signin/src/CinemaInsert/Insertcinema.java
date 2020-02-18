package CinemaInsert;

import java.util.ArrayList;
import java.util.Random;
import Dto.CinemaVo;
import mybatmodel.action1;
public class Insertcinema {
	String [] locate_do = {"����","���","��û","����","����","���","����"};
	
	String [] locate_si_seoul = {"����","����","��õ","����","����","����","����","���빮","����","���빮"};
	String [] locate_si_gyeonggi = {"����","�Ⱦ�","����","����","������","����","�Ȼ�","���","��õ","����"};
	String [] locate_si_choungchung = {"���","����","�ͻ�","����","����","û��","����","õ��","��õ","�ܾ�"};
	String [] locate_si_gangwon = {"��õ","����","����","�¹�","ȭõ","ö��","��â"};
	String [] locate_si_jeonra = {"����","����","����","����","�س�","����","����"};
	String [] locate_si_gyeongsang = {"�λ�","����","����","���","�뱸","���","����"};
	String [] locate_si_jeju = {"����","������"};
	String [] sponsor = {"�ް��ڽ�","�Ե��ó׸�","CGV"};
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
				//�� �� ��ȭ������
				for (int t=1;t<=cine ;t++) {
				int row = ran.nextInt(5)+10;
				int eng = ran.nextInt(engrow.length);
				movieinfo += engrow[eng]+row+"/";
				}
				article.setCineinfo(movieinfo);
				articlelist.add(article);
				System.out.println(article.getDoo()+article.getSi()+article.getSponsor()+article.getCine()+"��"+article.getCineinfo());
				act.Cinemainsert(article);
			}
		}
		return articlelist;
	}

	
}
