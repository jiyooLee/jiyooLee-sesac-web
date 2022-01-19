package kr.co.mlec.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.board.vo.BoardVO;

// /board/list.do(전체리스트조회) 호출되었을 때 
//  1. 비지니스로직수행(tbl_board에서 전체게시글 조회)
//  2. servlet에게 forward 시킬 jsp/board/list.jsp 알려줌

public class BoardListController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request,
					HttpServletResponse response) throws Exception {

		List<BoardVO> list = new ArrayList<>();
		list.add(new BoardVO("aaa", "bbb"));
		list.add(new BoardVO("ccc", "ddd"));
		list.add(new BoardVO("eee", "fff"));
		
		request.setAttribute("list", list);		
		
		return "/jsp/board/list.jsp";
	}
}






