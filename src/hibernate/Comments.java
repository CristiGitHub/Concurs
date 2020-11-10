package hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="comments")
public class Comments {

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	
	
	@Column(name = "mesaj", nullable = false, length = 65535, columnDefinition="TEXT")
	private String mesaj;
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMesaj() {
		return mesaj;
	}

	public void setMesaj(String mesaj) {
		this.mesaj = mesaj;
	}

	public Idei getIdei() {
		return idei;
	}

	public void setIdei(Idei idei) {
		this.idei = idei;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	@ManyToOne
	@JoinColumn(name="id_idei")
	private Idei idei;

	@ManyToOne
	@JoinColumn(name="id_user")
	private Users user;
}
