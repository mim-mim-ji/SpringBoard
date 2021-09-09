package com.spring.mvc.board.service;

import java.util.List;

import com.spring.mvc.board.commons.PageVO;
import com.spring.mvc.board.commons.SearchVO;
import com.spring.mvc.board.model.BoardVO;

public interface IBoardService {
	
		//게시글 등록
		void insert(BoardVO article);
		
		//게시글 상세조회
		BoardVO getArticle(int boardNo);
		
		
		//게시글 수정 기능
		void update(BoardVO article);
		
		//게시글 삭제 기능
		void delete(int boardNo);
		
		//검색, 페이징 기능이 모두 포함된 목록 조회 기능
		List<BoardVO> getArticleList(SearchVO search); 
		int countArticles(SearchVO search);
		
		
		
//		//제목으로 검색기능
//		List<BoardVO> getArticleByTitle(PageVO paging, SearchVO search);
//		
		
}
