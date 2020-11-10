package module;

import java.io.IOException;

import hibernate.Users;
import hibernate.main;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends BaseView{

	public Register(String page) {
		super(page);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void render(ServletRequest request, ServletResponse response) {
		// TODO Auto-generated method stub
		Users ua=new Users();
		main me=new main();
		String p1 = request.getParameter("username");
		String p2 = request.getParameter("email");
		String p3 = request.getParameter("password");
		String p4 = request.getParameter("confirm-password");
		/*String p5 = request.getParameter("nume");
		String p7 = request.getParameter("prenume");
		String p8 = request.getParameter("profesie");
		String p9 = request.getParameter("datanasterii");*/
		boolean p1Valid = p1 != null && me.UserGetId(p1)==0 && p1.length() >= 4  && p1.length() <= 20;
		boolean p2Valid = p2 !=null && me.EmailEx(p2)==0; 
		boolean p3Valid = p3 !=null && p3.length() >=4 && p3.length() <=15;
		boolean p4Valid = p4 !=null && p3.equals(p4) && p4.length() >= 4;
		if(p1Valid && p2Valid && p3Valid)
		 {main au =new main();
			au.Register(p1,p3,p2);
		try {
			(((HttpServletRequest) request)).login(p1, p3);
			((HttpServletResponse) response).sendRedirect("Home");
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 }
		
	}

}
