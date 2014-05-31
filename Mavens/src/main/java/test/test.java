package test;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import Metier.Users;
import Servives.UsersService;

public class test {

	@Test
	public void TestUnit(){
		 Users p =new Users();
		p.setEmail("emaaail");
		p.setNom("s2death");
		p.setNumero("060606");
		p.setPrenom("salaheddine");
		
		UsersService S = new UsersService();
		S.add(p);
		
		assertEquals("emaaail", p.getEmail());
	assertEquals("s2death", p.getNom());
	assertEquals("060606", p.getNumero());
	assertEquals("salaheddine", p.getPrenom());
	
	}
	

	}


