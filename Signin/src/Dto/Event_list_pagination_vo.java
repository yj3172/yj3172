package Dto;

public class Event_list_pagination_vo {
		private int pagingsize ; //�������� ��µǴ� ����¡�� ������
		private int nownum ;		//����������
		private int totalnum ;		//��ƼŬ��(������) �� ����
		
		public int getPagingsize() {
			return pagingsize;
		}
		public void setPagingsize(int pagingsize) {
			this.pagingsize = pagingsize;
		}
		public int getNownum() {
			return nownum;
		}
		public void setNownum(int nownum) {
			this.nownum = nownum;
		}
		public int getTotalnum() {
			return totalnum;
		}
		public void setTotalnum(int totalnum) {
			this.totalnum = totalnum;
		}
		
		
}
