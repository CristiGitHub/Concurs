package hibernate;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;


public class main {
	//----------Session------------//
	public static void SessionCreation(String sesid,int user)
	{	Session s = HibernateBase.getInstance().getSession();
	org.hibernate.Transaction tr=s.getTransaction();
	if(tr.isActive())
		tr.rollback();
	else
		tr= s.beginTransaction();		Users users = s.get(Users.class, user);
		Sessions se =new Sessions();
		
		se.setSesid(sesid);
		se.setUser(users);
		users.getSesiunea().add(se);
		s.save(se);
		tr.commit();
		s.close();
		
		
	}
	public static boolean isLogged(int user)
	{Session s = HibernateBase.getInstance().getSession();
	org.hibernate.Transaction tr=s.getTransaction();
	if(tr.isActive())
		tr.rollback();
	else
		tr= s.beginTransaction();	Users users = s.get(Users.class, user);
	if(users.getSesiunea().size()>0)
			return true;
	else
		return false;
		
	}
	public static boolean isLogged(int user ,String sesid)
	{Session s = HibernateBase.getInstance().getSession();
	org.hibernate.Transaction tr=s.getTransaction();
	if(tr.isActive())
		tr.rollback();
	else
		tr= s.beginTransaction();	Users users = s.get(Users.class, user);
	for(Sessions sol :users.getSesiunea())
	{
		if(sol.getSesid().equals(sesid))
			return true;
	}
	return false;
		
	}
	
	public static void deleteSession(String Username)
	{Session s = HibernateBase.getInstance().getSession();
	org.hibernate.Transaction tr=s.getTransaction();
	if(tr.isActive())
		tr.rollback();
	else
		tr= s.beginTransaction();	
		Users user = s.get(Users.class, UserGetId(Username));
		for(Sessions ser: user.getSesiunea())
		{
			s.delete(ser);
		}
		tr.commit();
	s.close();
	}
	//---------------ELC---------//
	
	
	public static List getEntityListCriteria(Class entity, String attribute, String value, int value2, boolean isInt)
	{
		Session s = HibernateBase.getInstance().getSession();
		List result;
		if(isInt)
		{
		 result = s.createCriteria(entity).add(Restrictions.eq(attribute, value2)).list();
		}
		else
		{
			result = s.createCriteria(entity).add(Restrictions.eq(attribute, value)).list();
		}
		s.close();
		return result;
	        
	}
	//-----------User------------//
	public static Users getUser(String nume)
	{Session s = HibernateBase.getInstance().getSession();
		Users us =s.get(Users.class, UserGetId(nume));
		s.close();
		return us;
		
	}
	
	public static String  RankGetter(String username)
	{	Users user =getUser(username);
	String profesie = user.getInfo().getProfesie();
	return profesie;
		
		}
	public static int Putere(String username)
	{
		Users user =getUser(username);
		String profesie = user.getInfo().getProfesie();
			int putere =0;
			if(profesie.equals("Elev"))
				putere =1;
			if(profesie.equals("Profesor"))
				putere =2;
			if(profesie.equals("Antreprenor"))
				putere =2;
			return putere;
			
	}
	

	public static int UserGetId(String Nume)
	{
		List<Users> top = getEntityListCriteria(Users.class,"username",Nume,0,false);
		for(Users tel:top)
		{
			return tel.getId();
		}
		return 0;
		}
	
	public static int EmailEx(String email)
	{
		List<Emails> top = getEntityListCriteria(Emails.class,"email",email,0,false);
		for(Emails tel:top)
		{
			return tel.getId();
		}
		return 0;
		}
	
	
	public static void Register(String name,String pass,String Email)
	{    	Roles uh = new Roles(0, name, "role1");
			Users oh = new Users(0 , name , pass);
			Emails om = new Emails(0 , name , Email);
			Session s = HibernateBase.getInstance().getSession();
	    	s.save(uh);
	    	s.save(oh);
	    	s.save(om);
	    	HibernateBase.getInstance().close(s);
	}
	
	public static String UserGetName(int id)
	{
		String result=null;
		Session s = HibernateBase.getInstance().getSession();
		result=s.get(Users.class, id).getUsername();
		s.close();
		return result;
	}
	public static String LastRegister()
	{
		Session s = HibernateBase.getInstance().getSession();
		List<Users> result =s.createCriteria(Users.class).list();
		s.close();
		return result.get(result.size()-1).getUsername();
	}
	public static int NrUseri()
	{
		Session s = HibernateBase.getInstance().getSession();
		List<Users> result =s.createCriteria(Users.class).list();
		s.close();
		return result.size();
		
	
	}
	
	/*
	 * BufferedReader br = new BufferedReader(new FileReader(myFile)); 
			 
	  		  String st; 
	  		  while ((st = br.readLine()) != null) 
	  		    System.out.println(st);
	 */
	
	
	
	//--------Topics-------------//
	
	public static void ArticleCreator(String text,int id,String Titlu) 
	{
		Session s = HibernateBase.getInstance().getSession();
		org.hibernate.Transaction tr=s.getTransaction();
		Users user=s.get(Users.class, id);
		Articole ol = new Articole(0,user,Titlu,text,new Date(),0);
		s.save(ol);
	      tr.commit();
	      s.close();
		
	}
	public static void ConfirmArticle(int id)
	{
		Session s = HibernateBase.getInstance().getSession();
		org.hibernate.Transaction tr=s.getTransaction();
		Articole art = s.get(Articole.class, id);
		art.setConfirmed(1);
		s.update(art);
		tr.commit();
		s.close();
	}
	/*public static String TextArticol(int id) throws IOException 
	{
		Session s = HibernateBase.getInstance().getSession();
		String result ="";
		Articole art = s.get(Articole.class, id);
		s.close();
		File myFile = new File("D:/Coding/eclipse-jee-kepler-SR2-win32-x86_64/Concurs/WebContent/articole/",art.getFisier());
		 BufferedReader br = null;
		
			br = new BufferedReader(new FileReader(myFile));
			String st; 
	  		  while ((st = br.readLine()) != null) 
	  		  {
	  			  result=result+st;
	  			  result=result+"\n";
	  		  }
		return result;
		
		 
		
	}*/
	public static List UserArticol()
	{Session s = HibernateBase.getInstance().getSession();
	List<Articole> rol=s.createCriteria(Articole.class).list();
	List<Articole> result = null ;
		s.close();
		for(Articole oll :rol)
			if(oll.getConfirmed()==1)
					result.add(oll);
			
	
		Collections.reverse(result);
				
				
		return result;
	}
	public static List AdmArticol()
	{Session s = HibernateBase.getInstance().getSession();
	List<Articole> result=s.createCriteria(Articole.class).list();
	s.close();
	Collections.reverse(result);

		return result;
	}
	
	public static int NumarArticole()
	{
		Session s = HibernateBase.getInstance().getSession();
		List<Articole> result =s.createCriteria(Articole.class).list();
		s.close();
		return result.size();
	}
	
	//-------------Idei--------------//
	
	public static int NumarIdei()
	{
		Session s = HibernateBase.getInstance().getSession();
		List<Idei> result = s.createCriteria(Idei.class).list();
		s.close();
		return result.size();
	}
	 
	public static List ListIdei()
	{
		Session s = HibernateBase.getInstance().getSession();
		List<Idei> result = s.createCriteria(Idei.class).list();
		s.close();
		return result;
	}
	
	public static void CreareIdeie(String mesaj,int id,String caen,String denumire,String tip, String domeniu)
	{
		Session s = HibernateBase.getInstance().getSession();
		org.hibernate.Transaction tr=s.getTransaction();
		Users user = s.get(Users.class, id);
			Idei ide = new Idei(mesaj,user,caen,denumire,tip,domeniu,0,0,new Date());
			s.save(ide);
			tr.commit();
			s.close();
			
	}
	 public static int isLiked(int id_user,int id_idei)
	 {
		 int result = 0;
		 Session s = HibernateBase.getInstance().getSession();
		  Users user = s.get(Users.class, id_user);
		  Idei idei = s.get(Idei.class, id_idei);
		  for(Likes lol :user.getLikes())
		  {
			  if(lol.getIdei()==idei)
				  	return lol.getId();
				  
		  }
		  s.close();
		  return result;
	 }
	 
		public static void likeAPost(int id,int tmi)
		{
			Session s = HibernateBase.getInstance().getSession();
			org.hibernate.Transaction tr = s.beginTransaction();
			int x=isLiked(id,tmi);
			if(x==0)
			{Likes tri = new Likes();
			Users user = s.get(Users.class, id);
			Idei tor = s.get(Idei.class,tmi);
			tor.setLike(tor.getLike()+1);
			tri.setIdei(tor);
			tri.setUser(user);
			user.getLikes().add(tri);
			tor.getLikes().add(tri);

			s.save(tri);
			tr.commit();}
			else
			{
				Likes tri = s.get(Likes.class, x);
				Idei tor = s.get(Idei.class,tmi);
				tor.setLike(tor.getLike()-1);
				s.save(tor);
				s.delete(tri);
				tr.commit();
				
			}
			s.close();
		}
		public static int likesNumber(int tmi)
		{
			int result;
			Session s = HibernateBase.getInstance().getSession();
			Idei topic = s.get(Idei.class, tmi);	
			result = topic.getLikes().size();
			s.close();
			return result;

		}
		public static List getComments(int tmi)
		{
			List<Comments> result = null;
			Session s = HibernateBase.getInstance().getSession();
			Idei topic = s.get(Idei.class, tmi);	
			result=topic.getComments();
			s.close();
			return result;
			
		}
		
	
	
	
		
	
	

	
	//------------Main-------------//
	
	
	
	  public static void main(String[] args) throws IOException
	    {
		 System.out.println(RankGetter("test"));   }
	
}
