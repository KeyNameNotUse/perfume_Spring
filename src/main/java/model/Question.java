package model;

import java.util.Date;

public class Question {
	
	private int quenum; //문의글 번호
	private String quesubjct; //문의글 분류(상품/배송/주문및결제/회원/기타)
	private String quetitle; //문의글 제목
	private String quecontent; //문의글 내용
	private String queimage; //첨부 이미지
	private int queanswer; //답변 유무 (1:유 2:무)
	private Date queregdate; // 문의글 작성 날짜
	
	/*
create table question(
quenum int primary key,
quesubjct varchar(50),
quetitle varchar(100),
quecontent varchar(2000),
queimage varchar(300),
queanswer int,
queregdate date);
create sequence questionseq;
	
	*/
	
	public int getQueanswer() {
		return queanswer;
	}
	public void setQueanswer(int queanswer) {
		this.queanswer = queanswer;
	}
	public int getQuenum() {
		return quenum;
	}
	public void setQuenum(int quenum) {
		this.quenum = quenum;
	}
	public String getQuesubjct() {
		return quesubjct;
	}
	public void setQuesubjct(String quesubjct) {
		this.quesubjct = quesubjct;
	}
	public String getQuetitle() {
		return quetitle;
	}
	public void setQuetitle(String quetitle) {
		this.quetitle = quetitle;
	}
	public String getQuecontent() {
		return quecontent;
	}
	public void setQuecontent(String quecontent) {
		this.quecontent = quecontent;
	}
	public String getQueimage() {
		return queimage;
	}
	public void setQueimage(String queimage) {
		this.queimage = queimage;
	}
	public Date getQueregdate() {
		return queregdate;
	}
	public void setQueregdate(Date queregdate) {
		this.queregdate = queregdate;
	}
	@Override
	public String toString() {
		return "Question [quenum=" + quenum + ", quesubjct=" + quesubjct + ", quetitle=" + quetitle + ", quecontent="
				+ quecontent + ", queimage=" + queimage + ", queanswer=" + queanswer + ", queregdate=" + queregdate
				+ "]";
	}


	

}
