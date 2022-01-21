package kr.co.mlec.board.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.board.service.BoardService;
import kr.co.mlec.board.vo.BoardFileVO;
import kr.co.mlec.board.vo.BoardVO;
import kr.co.mlec.controller.Controller;

public class BoardDetailController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int no = Integer.parseInt(request.getParameter("no"));
		
		BoardService service = new BoardService();
		// 해당게시글 + 첨부파일 조회
		Map<String, Object> result = service.detailBoard(no);
		
		BoardVO board = (BoardVO)result.get("board");
		List<BoardFileVO> fileList = (List<BoardFileVO>)result.get("fileList");
		
		// 공유영역 등록
		request.setAttribute("board", board);
		request.setAttribute("fileList", fileList);
		
		return "/jsp/board/detail.jsp";
	}
	/*
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		BoardService service = new BoardService();
		// 해당게시글 + 첨부파일 조회
		Object[] arr = service.detailBoard2(no);
		
		BoardVO board = (BoardVO)arr[0];
		List<BoardFileVO> fileList = (List<BoardFileVO>)arr[1];
		
		// 공유영역 등록
		request.setAttribute("board", board);
		request.setAttribute("fileList", fileList);
		
		return "/jsp/board/detail.jsp";
	}
	*/
	
}






