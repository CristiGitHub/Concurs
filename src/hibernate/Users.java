package hibernate;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.JoinColumn;


import org.hibernate.mapping.Set;

@Entity
@Table(name="users")
public class Users implements Serializable {
	private static final long serialVersionUID = 1L;
	public Users()
	{
		
	}
	public Users(int id ,String name, String pass){
		this.id	=id;
		this.username = name;
		this.password = pass;
	}
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="id")
private int id;

@Column(name="username")
private String username;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Column(name="password")
private String password;


@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
private List<Sessions> sesiunea = new ArrayList<Sessions>();
public List<Sessions> getSesiunea() {
	return sesiunea;
}
public void setSesiunea(List<Sessions> sesiunea) {
	this.sesiunea = sesiunea;
}
@OneToOne(fetch = FetchType.LAZY, mappedBy="users")
private Info Info;
public Info getInfo() {
	return Info;
}
@OneToMany(fetch = FetchType.LAZY, mappedBy="user")
private  List<Articole> articole = new ArrayList<Articole>();

@OneToMany(fetch = FetchType.LAZY, mappedBy="user")
private  List<Idei> idei = new ArrayList<Idei>();

@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
private List<Comments> Comments = new ArrayList<Comments>();

public List<Idei> getIdei() {
	return idei;
}
public void setIdei(List<Idei> idei) {
	this.idei = idei;
}
public List<Comments> getComments() {
	return Comments;
}
public void setComments(List<Comments> comments) {
	Comments = comments;
}
public List<Likes> getLikes() {
	return Likes;
}
public void setLikes(List<Likes> likes) {
	Likes = likes;
}
@OneToMany(fetch= FetchType.LAZY, mappedBy = "user")
private List<Likes> Likes = new ArrayList<Likes>();

public List<Articole> getArticole() {
	return articole;
}
public void setArticole(List<Articole> articole) {
	this.articole = articole;
}
public void setInfo(Info info) {
	Info = info;
}






}

