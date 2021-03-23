package spring.reserve.dao;

import java.util.List;

import spring.dto.ReserveDto;

public interface ReserveDaoInter {
	//출력
	public int getTotalCount();
	public void inserReserve(ReserveDto dto);
	public ReserveDto getData(String num);
	public List<ReserveDto> getAllDatas();
	
	//수정
	public void updateReserve(ReserveDto dto);
	public void deleteReserve(String num);
	
	
}
