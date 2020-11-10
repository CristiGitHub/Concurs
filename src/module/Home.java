package module;

import hibernate.main;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class Home extends BaseView{

	public Home(String page) {
		super(page);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void render(ServletRequest request, ServletResponse response) {
		// TODO Auto-generated method stub
		main base = new main();
		String username =((HttpServletRequest) request).getUserPrincipal().getName();
		String grad ="";
		grad=base.RankGetter(username);
		
		request.setAttribute("NrUseri", base.NrUseri());
		request.setAttribute("LastUser", base.LastRegister());
		request.setAttribute("NrArticole", base.NumarArticole());
		request.setAttribute("username", username);
		request.setAttribute("rank", grad);
	}

}
