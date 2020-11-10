package module;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import hibernate.main;
import hibernate.Idei;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class Ide extends BaseView {

	public Ide(String page) {
		super(page);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void render(ServletRequest request, ServletResponse response) {
		main base = new main();
		String username =((HttpServletRequest) request).getUserPrincipal().getName();
		String url = ((HttpServletRequest) request).getRequestURL().toString();
		int putere =base.Putere(username);
		String grad =base.RankGetter(username);
		final String regex = "Idei(?:\\/(\\w+))?";

		
final Pattern pattern = Pattern.compile(regex, Pattern.MULTILINE);
final Matcher matcher = pattern.matcher(url);
matcher.find();
if(matcher.group(1)!=null) {
    String comanda = matcher.group(1);
    	if(comanda.equals("Trimite"))
    	{
    		String mesaj=request.getParameter("mesaj");  
			String denum=request.getParameter("denum");
			String tip=request.getParameter("tip");
			String ca = request.getParameter("caen");
			String domeniu=request.getParameter("domeniu");
	
			base.CreareIdeie(mesaj, base.UserGetId(username), ca, denum, tip, domeniu);
    	}
}
List<Idei> idor=base.ListIdei();

			
		request.setAttribute("url", url);
		request.setAttribute("allidei", idor);
		request.setAttribute("username", username);
		request.setAttribute("rank", grad);
		
	}

}
