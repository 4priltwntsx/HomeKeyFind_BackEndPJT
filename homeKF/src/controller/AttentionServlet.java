package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dto.Attention;
import dto.User;
import service.AttentionService;

@WebServlet("/attention")
public class AttentionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static AttentionService service = AttentionService.getInstance();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action  = request.getParameter("act");
		String aptCode  = request.getParameter("aptCode");
		User user = (User) request.getSession().getAttribute("loginInfo");
		
		if ("addAttention".equals(action)) {
			System.out.println("ATTENTION - addAttention");
			service.addAttention(new Attention(user.getId(),Long.parseLong(aptCode)));
			request.setAttribute("aptCode", aptCode);
			request.getRequestDispatcher("success/successAttention.jsp").forward(request, response);
			
		} else if ("checkAtt".equals(action)) {
			System.out.println("ATTENTION - checkAtt");
			try {
				Attention a = service.getAttention(aptCode, user.getId());
				response.setContentType("text/plain;charset=utf-8");
				Gson gs = new Gson();
				PrintWriter out = response.getWriter();
				out.println(gs.toJson(a));
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if ("delete".equals(action)) {
			System.out.println("ATTENTION - delete");
			service.delete(new Attention(user.getId(),Long.parseLong(aptCode)));
			request.setAttribute("msg", "찜 삭제 완료!!");
			request.getRequestDispatcher("user?act=mypage").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
