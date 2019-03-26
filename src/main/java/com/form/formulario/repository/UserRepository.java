package com.form.formulario.repository;

import org.springframework.data.repository.CrudRepository;

import com.form.formulario.modelo.User;

public interface UserRepository extends CrudRepository<User, Long> {

	User findByCedula(String cedula);
	
}
