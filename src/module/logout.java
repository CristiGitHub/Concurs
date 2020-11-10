package module;



import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.*;

public class logout extends BaseView{

	public logout(String page) {
		super(page);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void render(ServletRequest request, ServletResponse response) {
		// TODO Auto-generated method stub
		  HttpSession session = ((HttpServletRequest) request).getSession();
		  session.invalidate();
	}

}
