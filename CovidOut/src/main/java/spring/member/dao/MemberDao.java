package spring.member.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import spring.dto.MemberDto;

@Repository
public class MemberDao extends SqlSessionDaoSupport implements MemberDaoInter {

	@Override
	public void insertMember(MemberDto dto) {
		// TODO Auto-generated method stub
		getSqlSession().insert("insertOfMember", dto);
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
		return getSqlSession().selectOne("loginOfMember", dto);
	}

	
	
}
