package module;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import hibernate.Articole;
import hibernate.Users;
import hibernate.main;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class Arti extends BaseView {

	public Arti(String page) {
		super(page);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void render(ServletRequest request, ServletResponse response) {
	// TODO Auto-generated method stub
		main base =new main();
		String username =((HttpServletRequest) request).getUserPrincipal().getName();
		String url = ((HttpServletRequest) request).getRequestURL().toString();
		int putere =base.Putere(username);
		String grad =base.RankGetter(username);
		final String regex = "Articole(?:\\/(\\w+))?";

		
final Pattern pattern = Pattern.compile(regex, Pattern.MULTILINE);
final Matcher matcher = pattern.matcher(url);
matcher.find();
if(matcher.group(1)!=null) {
    String comanda = matcher.group(1);
    	if(comanda.equals("Trimite"))
    	{
    		String mesaj=request.getParameter("mesaj");  
			String titlu=request.getParameter("titlu");
			
			base.ArticleCreator(mesaj,base.UserGetId(username),titlu);
    	}

}

		List<Articole> lsm = null;
			if(putere==1)
				lsm=base.UserArticol();
			else
				lsm=base.AdmArticol();
			
			Articole mes =new Articole();
			request.setAttribute("rank", base.RankGetter(username));
			request.setAttribute("url", url);
			request.setAttribute("username", username);
			request.setAttribute("rank", grad);
			request.setAttribute("allmes", lsm);
				
			
		
		
	}

}
