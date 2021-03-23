package spring.scrap.dao;

import java.util.List;

import spring.dto.ScrapDto;

public interface ScrapDaoInter {
	public int getNumMax();
	public int getTotalCount();
	public List<ScrapDto> getScrapList(int start, int perpage);
	public ScrapDto getScrapData(String num);
	public void deleteScrap(String num);
}
