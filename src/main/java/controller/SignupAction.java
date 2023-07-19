package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberVO;

public class SignupAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ActionForward forward = null;
		
		MemberDAO mDAO = new MemberDAO();
		MemberVO mVO = new MemberVO();
		
		mVO.setMemberId(request.getParameter("memberId"));
		mVO.setMemberPw(request.getParameter("memberPw"));
		mVO.setMemberName(request.getParameter("memberName"));
		mVO.setMemberAddress(request.getParameter("memberAddress"));
		mVO.setMemberPhone(Long.parseLong(request.getParameter("memberPhone")));
		mVO.setMemberEmail(request.getParameter("memberEmail"));
		
		if (mDAO.insert(mVO)) {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("main.do");
		}
		
		return forward;
	}

}
