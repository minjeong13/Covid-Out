package spring.scrap.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import spring.dto.ScrapDto;

@Repository
public class ScrapDao extends SqlSessionDaoSupport implements ScrapDaoInter {

	@Override
	public int getNumMax() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ScrapDto> getScrapList(int start, int perpage) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ScrapDto getScrapData(String num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteScrap(String num) {
		// TODO Auto-generated method stub

	}

}
