package hibernate;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name="session")
public class Sessions implements Serializable{
	private static final long serialVersionUID = 1L;
	public Sessions()
	{
		
	}
	public Sessions(int id,String sesid,Users user)
	{
	this.id=id;
	this.sesid=sesid;
	this.user=user;
	}
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="id")
private int id;

@Column(name="sesid")
private String sesid;

@ManyToOne(fetch = FetchType.LAZY)
@JoinColumn(name = "username", nullable = false)
private Users user;


public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getSesid() {
	return sesid;
}

public void setSesid(String sesid) {
	this.sesid = sesid;
}
public Users getUser() {
	return user;
}
public void setUser(Users user) {
	this.user = user;
}





}
