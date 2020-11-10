package hibernate;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="idei")
public class Idei implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	public Idei()
	{
		
	}
	public Idei(String mesaj,Users user,String caen,String denumire,String tip,String domeniu,int like,int id,Date date)
	{
		this.caen=caen;
		this.denumire=denumire;
		this.domeniu=domeniu;
		this.user=user;
		this.id=id;
		this.like=like;
		this.mesaj=mesaj;
		this.tip=tip;
		this.data=data;
	}

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="data")
	private Date data;
	
	@Column(name = "mesaj", nullable = false, length = 65535, columnDefinition="TEXT")
	private String mesaj;
	
	@Column(name="caen")
	private String caen;
	
	@Column(name="denumire")
	private String denumire;
	
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public void setComments(List<Comments> comments) {
		Comments = comments;
	}
	public void setLikes(List<Likes> likes) {
		Likes = likes;
	}


	@ManyToOne
	@JoinColumn(name="id_user")
	private Users user;
	
	@Column(name="domeniu")
	private String domeniu;
	
	@Column(name="tip")
	private String tip;
	
	@Column(name="like")
	private int like;

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

	public String getCaen() {
		return caen;
	}

	public void setCaen(String caen) {
		this.caen = caen;
	}

	public String getDenumire() {
		return denumire;
	}

	public void setDenumire(String denumire) {
		this.denumire = denumire;
	}

	public String getDomeniu() {
		return domeniu;
	}

	public void setDomeniu(String domeniu) {
		this.domeniu = domeniu;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	public int getLike() {
		return like;
	}

	public void setLike(int like) {
		this.like = like;
	}
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "idei")
	private List<Comments> Comments = new ArrayList<Comments>();

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "idei")
	private List<Likes> Likes = new ArrayList<Likes>();

	public Users getUser() {
		return user;
	}
	public List<Comments> getComments() {
		return Comments;
	}
	public List<Likes> getLikes() {
		return Likes;
	}
	

}
