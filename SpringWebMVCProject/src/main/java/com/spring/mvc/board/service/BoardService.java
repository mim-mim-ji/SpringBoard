package com.spring.mvc.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mvc.board.commons.PageVO;
import com.spring.mvc.board.commons.SearchVO;
import com.spring.mvc.board.model.BoardVO;
import com.spring.mvc.board.repository.IBoardMapper;

@Service
public class BoardService implements IBoardService{

	@Autowired
	private IBoardMapper mapper;
	
	@Override
	public void insert(BoardVO article) {
		mapper.insert(article);
	}

	@Override
	public BoardVO getArticle(int boardNo) {
		mapper.updateViewCnt(boardNo);
		return mapper.getArticle(boardNo);
	}


	@Override
	public void update(BoardVO article) {
		mapper.update(article);
	}

	@Override
	public void delete(int boardNo) {
		mapper.delete(boardNo);
	}

	@Override
	public List<BoardVO> getArticleList(SearchVO search) {
		
		List<BoardVO> list = mapper.getArticleList(search);
		
		//1일 이내 신규글 new마크처리
		for(BoardVO article:list) {
			//현재 시간 읽어오기
			long now = System.currentTimeMillis(); //현재 시간을 밀리초로 리턴하는 메서드
			//각 게시물들의 작성 시간을 밀리초로 읽어오기
			long regTime = article.getRegDate().getTime();
			if(now - regTime < 60*60*24*1000) { //하루, 밀리초니까 1000곱해줌
				article.setNewMark(true);
			}
		}
		
		return list;
	}
	
	@Override
	public int countArticles(SearchVO search) {
		return mapper.countArticles(search);
	}
	
	
	
	

//	@Override
//	public List<BoardVO> getArticleByTitle(PageVO paging, SearchVO search) {
//		search.setKeyword("%"+ search.getKeyword() + "%");
//		return mapper.getArticleByTitle(paging, search);
//	}

}
