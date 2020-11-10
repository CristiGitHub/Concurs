package hibernate;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.Interceptor;

@Entity
@Table(name="emails")
public class Emails implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public Emails()
	{
		
	}

	public Emails(int id,String username,String email)
	{
		this.id=id;
		this.email=email;
		this.username=username;
	}
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="id")
private int id;

@Column(name="username")
private String username;

@Column(name="email")
private String email;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getusername() {
	return username;
}

public void setusername(String username) {
	this.username = username;
}

public String getemail() {
	return email;
}

public void setemail(String email) {
	this.email = email;
}

}