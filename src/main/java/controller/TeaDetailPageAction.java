package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.TeaDAO;
import model.TeaVO;

public class TeaDetailPageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ActionForward forward = null;
		
		TeaDAO tDAO = new TeaDAO();
		TeaVO tVO = new TeaVO();
		
		tVO.setTeaNum(Integer.parseInt(request.getParameter("teaNum")));
		tVO = tDAO.selectOne(tVO);
		
		if (tVO != null) {
			// 리뷰 형태 결정 후
			// 해당 상품 리뷰도 같이 추출
			request.setAttribute("tdata", tVO);
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("teaDetail.jsp");
		}		
		
		return forward;
	}
	
}
