package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberVO;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ActionForward forward = null;
		
		MemberDAO mDAO = new MemberDAO();
		MemberVO mVO = new MemberVO();
		
		mVO.setMemberId(request.getParameter("memberid"));
		mVO.setMemberPw(request.getParameter("memberpw"));
		mVO.setMemberSearch("로그인");
		mVO = mDAO.selectOne(mVO);
		
		if (mVO != null) {
			HttpSession session = request.getSession();
			session.setAttribute("ssMemberId", mVO.getMemberId());
			
			forward = new ActionForward();
			forward.setPath("main.do");
			forward.setRedirect(true);
		}
		
		return forward;
	}

}
