package spring.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.dto.MemberDto;
import spring.member.dao.MemberDaoInter;

@Service
public class MemberService implements MemberServiceInter{

	@Autowired
	private MemberDaoInter dao;

	@Override
	public void insertMember(MemberDto dto) {
		// TODO Auto-generated method stub
		dao.insertMember(dto);
	}

	@Override
	public void updateMember(MemberDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMember(String mnum) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public MemberDto getData(String mnum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int idCheck(String mid) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int pwCheck(String mid, String mpw) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDto getLogin(MemberDto dto) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
