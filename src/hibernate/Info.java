package hibernate;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="info")
public class Info implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public Info()
	{
		
	}
	public Info(int id,String Nume,String Prenume,Date data,int varsta,String profesie,Users usl)
	{
		this.id=id;
		this.Profesie=profesie;
		this.users=usl;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	
	
	@Column(name="profesie")
	private String Profesie;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	

	public String getProfesie() {
		return Profesie;
	}

	public void setProfesie(String profesie) {
		Profesie = profesie;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_user")
	private Users users;

	
	

}
