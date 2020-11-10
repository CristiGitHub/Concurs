package module;


import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public abstract class BaseView implements Servlet{
	
	private String page;
	
	public BaseView(String page){
		this.page = page;
	}

	public String getPage(){
		return page;
	}
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub	
	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void init(ServletConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException{
		this.render(request, response);
		((HttpServletRequest) request).getRequestDispatcher(page).forward(request, response);
	}

	public abstract void render(ServletRequest request, ServletResponse response);
}
