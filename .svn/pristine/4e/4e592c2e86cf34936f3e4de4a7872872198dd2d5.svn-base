package com.onsale.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.dao.UserBoardDAO;
import com.onsale.app.owner.vo.OwnerVO;
import com.onsale.app.shopping.dao.ShoppingDAO;

public class UserBoardListOkAction implements Action {
		@Override
		public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
			String type = (String)req.getSession().getAttribute("type");
			String session_email = (String)req.getSession().getAttribute("session_email");
			UserBoardDAO dao = new UserBoardDAO();
			ShoppingDAO s_dao = new ShoppingDAO();
			OwnerVO vo= s_dao.getownerInfo(session_email);
			ActionForward forward = new ActionForward();
			//사용자가 요청한 페이지 받아오기(사용자가 클릭한 페이지의 번호). 결과값이 없을 경우(=첫 게시글 등록자)가 있으므로 TEMP에 담아준다.
			String temp = req.getParameter("page");
			//Page가 널이어도 처음 보여지는 화면은 페이지 1
			int page = temp == null ? 1 : Integer.parseInt(temp);
			//한 페이지에 게시글을 10개씩 출력
			int pageSize = 10;
			//마지막 게시글 번호
			int endRow = page * pageSize;
			//첫 게시글 번호
			int startRow = endRow - (pageSize - 1);
			//전체 게시글 리스트 받아오기
			dao.getUserBoardList(startRow, endRow);
			//전체 게시글 개수
			int totalCnt = dao.getUserBoardTotal();
			//===========하단에 페이지 개수 연산============
			//전체 게시글 개수에 따른 마지막 페이지 연산
			int realEndPage = (totalCnt - 1) / pageSize + 1;
			//첫번째 페이지
			int startPage = ((page - 1) / pageSize) * pageSize + 1;
			//마지막 페이지
			int endPage = startPage + 9;
			//앤드페이지 보다 리얼엔드가 커지면 안됨. 
			//endPage가 realEndPage 보다 크니? 그게 아니면 endPage를 realEndPage에 맞춰 수정 
			endPage = endPage > realEndPage ? realEndPage : endPage;
			//화면에 전달할 변수(request scope에 담아서 보내는 방법)
			req.setAttribute("totalCnt", totalCnt);
			req.setAttribute("realEndPage", realEndPage);
			req.setAttribute("startPage", startPage);
			req.setAttribute("endPage", endPage);
			req.setAttribute("nowPage", page);
			req.setAttribute("boardList", dao.getUserBoardList(startRow, endRow));
			//세션 이메일로 닉네임 가져오는 부분. 작성자에 메일주소가 아닌 닉네임을 넣어준다.
			if(type.equals("user")) {
			req.setAttribute("nickname", dao.getUserNickname(session_email));
			}else{
				
				req.setAttribute("nickname", vo.getMart_owner_name());
			}
			
			//리다이렉트로 보내면 다 날아감! forward로 보내야한다.
			forward.setRedirect(false);
			//포워드로 보낼 경로
			forward.setPath("/app/board/userBoard.jsp?type="+type);
			
			return forward;
		}
	}
