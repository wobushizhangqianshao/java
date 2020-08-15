package com.kss.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 接收并转发get请求
 */
public class AJAXServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter printWriter = response.getWriter();
		
		if("kss".equals(userName)) {
			printWriter.write("不可用");
		}else {
			printWriter.write("可用");
		}
		printWriter.flush();
		printWriter.close();
	}
	

}
