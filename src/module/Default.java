package module;

import hibernate.main;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class Default extends BaseView{

	public Default(String page) {
		super(page);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void render(ServletRequest request, ServletResponse response) {
		boolean logat=false;

		
	 if(!((HttpServletRequest) request).getUserPrincipal().getName().equals(null))
		 {	
		 main base = new main();String username =((HttpServletRequest) request).getUserPrincipal().getName();
		 int userid= base.UserGetId(username);
		String sesid = ((HttpServletRequest) request).getSession().getId();
		if(!base.isLogged(userid,sesid))
			{base.SessionCreation(sesid, userid);
			 logat=true;
			
			}

		 }
	 
				request.setAttribute("logat",logat);
	}


}
