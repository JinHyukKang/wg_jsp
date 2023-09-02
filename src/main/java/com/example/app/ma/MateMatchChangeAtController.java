package com.example.app.ma;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.app.Execute;
import com.example.app.dao.MateDAO;

public class MateMatchChangeAtController implements Execute {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		MateDAO mateDAO = new MateDAO();
		mateDAO.changeAt(Integer.parseInt(request.getParameter("mateNum")));
		
	}
	
}
