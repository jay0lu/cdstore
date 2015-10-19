package controller;
 
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
 
public class CDControllerServlet extends HttpServlet {
     
    private static final long serialVersionUID = 1L;  //universal version identifier for a Serializable class
 
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
 
        String cdid = request.getParameter("cdid");
        String title = request.getParameter("title");
        String category = request.getParameter("category");
        String singer = request.getParameter("singer");
        double price = Double.valueOf(request.getParameter("price"));
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


}
