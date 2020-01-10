package com.dominikazb.medicalproducts.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dominikazb.medicalproducts.engine.ReadJSon;


@WebServlet("/read")
public class ReadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ReadJSon readJson = new ReadJSon();
		readJson.readJSonFile();
		
		System.out.println("what is happening?");
		
		
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		
	}

}
