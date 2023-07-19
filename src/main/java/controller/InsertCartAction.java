package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.TeaDAO;
import model.TeaVO;

public class InsertCartAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ActionForward forward = null;
		
		TeaDAO tDAO = new TeaDAO();
		TeaVO tVO = new TeaVO();
		
		tVO.setTeaNum(Integer.parseInt(request.getParameter("teaNum")));
		tVO = tDAO.selectOne(tVO);
		
		if (tVO == null) {
			return forward;
		}
		
		tVO.setTeaCnt(Integer.parseInt(request.getParameter("teaCnt")));
		
		HttpSession session = request.getSession();
		
		ArrayList<TeaVO> cart = (ArrayList<TeaVO>)session.getAttribute("cart");
		
		forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("cartPage.do"); // 현재페이지 아님 카트 페이지 받아와야함
		
		boolean flag = false;
		if (cart != null) {
			for (TeaVO t : cart) {
				if (t.getTeaNum() == tVO.getTeaNum()) {
					t.setTeaCnt(t.getTeaCnt() + tVO.getTeaCnt());
					flag = true;
					break;
				}
			}
		}
		else {
			cart = new ArrayList<TeaVO>();
		}
		
		if (!flag) {
			cart.add(tVO);
		}
		
		session.setAttribute("cart", cart);
		
		return forward;
	}
	
}
