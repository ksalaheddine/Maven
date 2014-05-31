package web;

import java.util.ArrayList;

import Metier.Users;

public class UsersBean {
	
	ArrayList<Users> UsersList = new ArrayList<Users>();

	public ArrayList<Users> getUsersList() {
		return UsersList;
	}

	public void setUsersList(ArrayList<Users> usersList) {
		UsersList = usersList;
	}
	

}
