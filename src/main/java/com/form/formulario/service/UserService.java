package com.form.formulario.service;

import com.form.formulario.modelo.User;

import java.util.List;

public interface UserService {

	User findById(long id);
	
	User findByCedula(String cedula);
	
	void saveUser(User user);
	
	void updateUser(User user);
	
	void deleteUserById(long id);

	List<User> findAllUsers(); 
	
	void deleteAllUsers();
	
	public boolean isUserExist(User user);
	
}
