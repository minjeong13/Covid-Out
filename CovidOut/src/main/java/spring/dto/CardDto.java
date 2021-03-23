package spring.dto;

import java.sql.Timestamp;

public class CardDto {
	
	private String cnum;
	private int cmidnum;
	private String cwriter;
	private String csubject;
	private String ccontent;
	private String cphoto;
	private int creadcount;
	private Timestamp cwritedate;
	
	public String getCnum() {
		return cnum;
	}
	public void setCnum(String cnum) {
		this.cnum = cnum;
	}
	public int getCmidnum() {
		return cmidnum;
	}
	public void setCmidnum(int cmidnum) {
		this.cmidnum = cmidnum;
	}
	public String getCwriter() {
		return cwriter;
	}
	public void setCwriter(String cwriter) {
		this.cwriter = cwriter;
	}
	public String getCsubject() {
		return csubject;
	}
	public void setCsubject(String csubject) {
		this.csubject = csubject;
	}
	public String getCcontent() {
		return ccontent;
	}
	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}
	public String getCphoto() {
		return cphoto;
	}
	public void setCphoto(String cphoto) {
		this.cphoto = cphoto;
	}
	public int getCreadcount() {
		return creadcount;
	}
	public void setCreadcount(int creadcount) {
		this.creadcount = creadcount;
	}
	public Timestamp getCwritedate() {
		return cwritedate;
	}
	public void setCwritedate(Timestamp cwritedate) {
		this.cwritedate = cwritedate;
	}
	
	
	

}
