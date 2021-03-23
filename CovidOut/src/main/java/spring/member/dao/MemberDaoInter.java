package spring.member.dao;

import spring.dto.MemberDto;


public interface MemberDaoInter {
	public void insertMember(MemberDto dto);
	public void updateMember(MemberDto dto);
	public void deleteMember(String mnum);
	public MemberDto getData(String mnum);
	public int idCheck(String mid);
	public int pwCheck(String mid, String mpw);
	public MemberDto getLogin(MemberDto dto	);

}