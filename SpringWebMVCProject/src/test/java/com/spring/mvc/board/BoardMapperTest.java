package com.spring.mvc.board;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.mvc.board.model.BoardVO;
import com.spring.mvc.board.repository.IBoardMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/mvc-config.xml"})
public class BoardMapperTest {
	
	@Autowired
	private IBoardMapper mapper;
	
	//게시글 등록 단위 테스트
	@Test
	public void insertTest() {
		for(int i=1;i<=3;i++) {
			BoardVO article = new BoardVO();
			System.out.println("테스트 제목입니다"+i);
			article.setTitle("테스트중"+i);
			article.setWriter("김테스트"+i);
			article.setContent("테스트 중이니까 말시키지 마세요~"+i);
			mapper.insert(article);
		}
		System.out.println("게시글 등록 성공");
	}
	
	//게시글 목록 조회 테스트
	@Test
	public void getListTest() {
		List<BoardVO> list = mapper.getArticleList();
		for(BoardVO vo:list) {
			System.out.println(vo);
		}
	}
	
	//게시글 단일 조회 테스트
	@Test
	public void getArticleTest() {
		BoardVO vo = mapper.getArticle(2);
		System.out.println(vo);
	}
	
	//게시글 수정 테스트
	@Test
	public void updateTest(int boardNo) {
		BoardVO vo = new BoardVO();
		vo.setBoardNo(2);
		vo.setTitle("메롱");
		vo.setContent("글");
		vo.setWriter("홍길동");
		mapper.update(vo);
		
	}
	
	//게시글 삭제 테스트
	@Test
	public void delete() {
		mapper.delete(2);
		BoardVO vo = mapper.getArticle(2);
		if(vo==null) {
			System.out.println("게시글 없음");
		} else {
			System.out.println("게시글 삭제 성공");
		}
	}
}
