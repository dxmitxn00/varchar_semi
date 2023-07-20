package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.TeaDAO;
import model.TeaVO;

public class TeaListPageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ActionForward forward = new ActionForward();
		
		TeaDAO tDAO = new TeaDAO();
		
		ArrayList<TeaVO> tdatas = tDAO.selectAll(null);
		request.setAttribute("tdatas", tdatas);
		
		forward.setRedirect(false);
		forward.setPath("teaList.jsp");
		
		return forward;
	}
	
}
