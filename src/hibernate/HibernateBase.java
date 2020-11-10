package hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class HibernateBase {

	private static SessionFactory sessionFactory = null;
	private static HibernateBase instance = new HibernateBase();
	
    static {
        try{
            loadSessionFactory();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
   
    public static void loadSessionFactory(){
        Configuration configuration = new Configuration();
        configuration.setProperty("hibernate.connection.driver_class", "com.mysql.jdbc.Driver");
        configuration.setProperty("hibernate.connection.url", "jdbc:mysql://127.0.0.1:3306/concurs");
        configuration.setProperty("hibernate.connection.username", "root");
        configuration.setProperty("hibernate.connection.password", "root");
        configuration.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
        configuration.setProperty("hibernate.show_sql", "true");
        configuration.setProperty("hibernate.connection.pool_size", "100");
        configuration.setProperty("hibernate.current_session_context_class.pool_size", "thread");
        configuration.setProperty("hibernate.cglib.use_reflection_optimizer", "false");
        configuration.setProperty("hibernate.hbm2ddl.auto" , "validate");
        //----------------CLASS LIST--------------\\

        configuration.addAnnotatedClass(Users.class);
        configuration.addAnnotatedClass(Emails.class);
        configuration.addAnnotatedClass(Roles.class);
        configuration.addAnnotatedClass(Sessions.class);
        configuration.addAnnotatedClass(Info.class);
        configuration.addAnnotatedClass(Articole.class);
        configuration.addAnnotatedClass(Idei.class);
        configuration.addAnnotatedClass(Likes.class);
        configuration.addAnnotatedClass(Comments.class);




        
        ServiceRegistry srvcReg = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
        sessionFactory = configuration.buildSessionFactory(srvcReg);
    }
 
    private HibernateBase(){
    	
    }
    
    public static HibernateBase getInstance(){
    	return instance;
    }
    
    public Session getSession(){
    	Session s = sessionFactory.openSession();
    	s.beginTransaction();
    	return s;
    }
    
    public void close(Session s){
    	if(s != null){
			s.getTransaction().commit();
			s.close();
		}
    }
}
