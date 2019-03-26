package com.form.formulario.service.impl;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.form.formulario.modelo.User;
import com.form.formulario.repository.UserRepository;
import com.form.formulario.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	private static final AtomicLong counter = new AtomicLong();
	
	private static List<User> users;
	
	@Autowired
	private UserRepository userRepository;
	
	
	
	public List<User> findAllUsers() {
		return (List<User>) userRepository.findAll();
	}
	
	public User findByCedula(String cedula) {
		return userRepository.findByCedula(cedula);
	}
	
	public void saveUser(User user) {
		userRepository.save(user);
	}

	public void updateUser(User user) {
		userRepository.save(user);
	}

	public boolean isUserExist(User user) {
		return findByCedula(user.getCedula())!=null;
	}
	
	public void deleteAllUsers(){
		userRepository.deleteAll();
	}

	@Override
	public User findById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUserById(long id) {
		// TODO Auto-generated method stub
		
	}

}
