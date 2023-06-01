package com.guci.mapper;

import static org.junit.Assert.*;

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

	@Setter(onMethod_ = @Autowired)
	private NoticeMapper mapper;
	
	@Test
	public void test() {
		mapper.getList().forEach(notice -> log.info(notice));
	}

	@Test
	public void testRead() {
		NoticeVO notice = mapper.read(10L);
		log.info(notice);
	}
	
	@Test
	public void testDelete() {
		log.info("Delete: " + mapper.delete(15L));
		
	}
	@Test
	public void testUpdate() {
		NoticeVO notice = new NoticeVO();
		notice.setNoticeNo(14L);
		notice.setNoticeTit("수정테스트2");
		notice.setNoticeCon("수정된 내용2");
		notice.setNoticeWri("admin");
		int count = mapper.update(notice);
		log.info("Update: "+ count);
	}
}
