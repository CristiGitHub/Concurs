package module;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import hibernate.main;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class Navbar extends BaseView{

	public Navbar(String page) {
		super(page);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void render(ServletRequest request, ServletResponse response) {


		main base = new main();
		String username =((HttpServletRequest) request).getUserPrincipal().getName();
		String grad ="";
		grad=base.RankGetter(username);
		int pagi = 1;
		final String regex = "Main(?:\\/(\\w+))?$";
		final String string = "Main";
		String url = ((HttpServletRequest) request).getRequestURL().toString();
		final Pattern pattern = Pattern.compile(regex, Pattern.MULTILINE);
		final Matcher matcher = pattern.matcher(url);
		if (matcher.matches()) {		
			matcher.find();
		String topic = matcher.group(1);
		if(topic.equals("Home"));
		pagi =1;
		if(topic.equals("Prezentare"));
		pagi =2;
		}

		request.setAttribute("username", username);
		request.setAttribute("rank", grad);

		request.setAttribute("pagina", pagi);

		
	 
	}


}
