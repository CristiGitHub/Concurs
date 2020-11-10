package module;


import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletRegistration;

import module.BaseView;


public class AppContextListener implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent event) {
		System.out.println("==============\nServletContextListener destroyed\n================");
			/*Connection c = null;
			ConnectionManager manager = new ConnectionManager();
			PreparedStatement s;
		    try  {
		    	c = manager.getConnection();
		    	s = c.prepareStatement("DELETE FROM session where id > 0");
			 s.executeUpdate();
		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        manager.close(c);
		    }*/
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		ServletContext context = event.getServletContext();
		//this.registerView(context, "/Index", new Default("/index.jsp"));
		//this.registerView(context, "/Main/*", new Navbar("logged/navbar.jsp"));
		//this.registerView(context, "/Actiuni", new Actiuni("logged/actiuni.jsp"));
		this.registerView(context,  "/Prezentare", new Prezentare("logged/prezentare.jsp"));
		this.registerView(context,  "/Home", new Home("logged/home.jsp"));
		this.registerView(context,  "/Articole/*", new Arti("logged/articole.jsp"));
		this.registerView(context, "/Idei/*", new Ide("logged/ideie.jsp"));
		this.registerView(context, "/Calculator", new calculator("logged/calculator.jsp"));
		this.registerView(context, "/Extern", new Externe("logged/Extern.jsp"));
		this.registerView(context, "/Quizz", new Quizz("logged/Quizz.jsp"));
		this.registerView(context, "/Logout", new logout("index.jsp"));
		//this.registerView(context, "/Register", new Register("register.jsp"));
		/*this.registerView(context, "/fslist", new FriendsList("/fslist.jsp"));
		this.registerView(context, "/Logoff", new Logout("/login.jsp"));
		this.registerView(context, "/Notificaton", new Notification("notifico.jsp"));
		//this.registerView(context, "/contact", new TestDispatcher("/contact.jsp"));*/

	    System.out.println("==============\nServletContextListener initialized\n================");
	}
	
	private void registerView(ServletContext context, String path, BaseView view){
		context.addServlet(view.getPage(), view).addMapping(path);
	}

}
