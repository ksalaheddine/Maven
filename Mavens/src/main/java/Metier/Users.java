package Metier;

public class Users {
	
	private Integer id;
	private String nom;
	private String prenom;
	private String email;
	private String numero;
	
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	
	
	public Integer getId() {
		return this.id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Users(String nom, String prenom, String email, String numero) {
		
		super();

		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.numero = numero;
	}

	
	
}
