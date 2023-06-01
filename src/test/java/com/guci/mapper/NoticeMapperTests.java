package com.guci.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.guci.domain.NoticeVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class NoticeMapperTests {
	@Setter(onMethod_ = {@Autowired})
	private NoticeMapper notimap;
	
	
	@Test
	public void testGetList() {
		notimap.getList().forEach(notimap -> log.info(notimap));
	}
	
//	@Test
//	public void testInsert() {
//		NoticeVO notice = new NoticeVO();
//		notice.setNoticeTit("testMessage");
//		notice.setNoticeCon("testContext");
//		notice.setNoticeWri("admin0011");
//		
//		notimap.insert(notice);
//		
//		log.info(notice);
//	}
//	
//	@Test
//	public void testInsertSelectKey() {
//		NoticeVO notice = new NoticeVO();
//		notice.setNoticeTit("test Message Copy");
//		notice.setNoticeCon("test Context Copt");
//		notice.setNoticeWri("admin0101");
//		
//		notimap.insert(notice);
//		
//		log.info(notice);
//	}
	
//	@Test
//	public void testRead() {
//		NoticeVO notice = notimap.read(2L);
//		
//		log.info(notice);
//	}
	
//	@Test
//	public void testDelete() {
//		
//		log.info("DELETE COUNT : " + notimap.delete(4L));
//	}
	
//	@Test
//	public void testUpdate() {
//		NoticeVO notice = new NoticeVO();
//		notice.setNoticeNo(5L);
//		notice.setNoticeTit("머슬양품점");
//		notice.setNoticeCon("숙제 영상");
//		notice.setNoticeWri("admin1121");
//		
//		int count = notimap.update(notice);
//		log.info("UPDATE COUNT : " + count);
//	}
	
}
