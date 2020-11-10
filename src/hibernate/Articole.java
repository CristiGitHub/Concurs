package hibernate;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="articole")
public class Articole implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public Articole()
	{
		
	}
	
	public Articole(int id,Users user,String Titlu)
	{
		this.id=id;
		this.user=user;
		this.Titlu=Titlu;
	}
	
	public Articole(int id,Users user,String Titlu,String mesaj,Date data,int confirmat)
	{
		this.id=id;
		this.user=user;
		this.Titlu=Titlu;
		this.mesaj=mesaj;
		this.Data=data;
		this.Confirmed=confirmat;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	

	@Column(name = "mesaj", nullable = false, length = 65535, columnDefinition="TEXT")
	private String mesaj;
	
	@Column(name="titlu")
	private String Titlu;
	
	@Column(name="confirmat")
	private int Confirmed;
	
	@Column(name="data")
	private Date Data;
	
	@ManyToOne
	@JoinColumn(name="id_user")
	private Users user;
	


	public String getMesaj() {
		return mesaj;
	}

	public void setMesaj(String mesaj) {
		this.mesaj = mesaj;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	public String getTitlu() {
		return Titlu;
	}

	public void setTitlu(String titlu) {
		Titlu = titlu;
	}

	public int getConfirmed() {
		return Confirmed;
	}

	public void setConfirmed(int confirmed) {
		Confirmed = confirmed;
	}

	public Date getData() {
		return Data;
	}

	public void setData(Date data) {
		Data = data;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}
	

	

}
