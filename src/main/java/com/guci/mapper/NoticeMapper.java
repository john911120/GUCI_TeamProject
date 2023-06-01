package com.guci.mapper;

import java.util.List;

import com.guci.domain.Criteria;
import com.guci.domain.NoticeVO;

public interface NoticeMapper {
	
//	@Select("select * from guci_notice where NOTICENO > 0")
	public List<NoticeVO> getList();
	
	public void insert(NoticeVO notice);
	
	public void insertSelectKey(NoticeVO notice);
	
	public NoticeVO read(Long noticeNo);
	
	public int delete(Long noticeNo);
	
	public int update(NoticeVO notice);
	
	public List<NoticeVO> getListWithPaging(Criteria cri);

	public int getTotalCount(Criteria cri);
}
