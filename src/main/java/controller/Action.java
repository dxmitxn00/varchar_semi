package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 07.15 11:00 수정
public interface Action {
	ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; 
}
