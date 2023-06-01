package com.guci.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.guci.domain.Criteria;
import com.guci.domain.NoticeVO;
import com.guci.mapper.NoticeMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {
	
	@Setter(onMethod_= @Autowired)
	private NoticeMapper mapper;

	@Override
	public void register(NoticeVO notice) {
		log.info("register : " + notice);
		
		mapper.insertSelectKey(notice);
	}

//	@Override
//	public List<BoardVO> getList() {
//		log.info("getList.....");
//		return mapper.getList();
//	}
	@Override
	public List<NoticeVO> getList(Criteria cri) {
		log.info("get List with criteria : " + cri);
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public NoticeVO get(Long noticeNo) {
		
		log.info("get....." + noticeNo);
		return mapper.read(noticeNo);
	}

	@Override
	public boolean modify(NoticeVO notice) {
		
		log.info("modify....." + notice);
		return mapper.update(notice) == 1;
	}

	@Override
	public boolean remove(Long noticeNo) {
		log.info("remove....." + noticeNo);
		
		return mapper.delete(noticeNo) == 1;
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

}
