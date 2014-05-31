package Servives;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import Metier.Users;

import com.mysql.jdbc.PreparedStatement;

public class UsersService {
	
	public void add(Users P){
		try {
			//1
			Class.forName("com.mysql.jdbc.Driver");
			//2
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/project_npi","root","root");
			//3
			PreparedStatement pr =  (PreparedStatement)  cn.prepareStatement("INSERT INTO Users VALUES(NULL,?,?,?,?)");
	
			pr.setString(1, P.getNom());
			pr.setString(2, P.getPrenom());
			pr.setString(3, P.getEmail());
			pr.setString(4, P.getNumero());
			//4
			pr.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//Userss.add(P);
	}
	
	
	
	public ArrayList<Users> getAll(){
		ArrayList<Users> listUsers = new ArrayList<Users>();
		
		try {
			//1
			Class.forName("com.mysql.jdbc.Driver");
			//2
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_npi","root","root");
			//3
			PreparedStatement pr =  (PreparedStatement)  cn.prepareStatement("SELECT * FROM Users");
			//4
			ResultSet rs = pr.executeQuery();
			//5
			while(rs.next()){
				Users p=new Users();
              p.setId(rs.getInt("id"));
				p.setNom(rs.getString("nom"));
				p.setPrenom(rs.getString("prenom"));
				p.setEmail(rs.getString("email"));
				p.setNumero(rs.getString("numero"));
				listUsers.add(p);
				
				
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return listUsers;
	}
	

}
