package com.bhanu.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.bhanu.Entity.User;
import com.bhanu.repo.UserRepo;
@Service
public class UserImpl implements userService {
	@Autowired
	BCryptPasswordEncoder encrypt;
	@Autowired
	private UserRepo repo;
	@Override
	public void saveUser(User user) {
		String password = user.getPassword();
		String PasswordEncode = encrypt.encode(password);
		user.setPassword(PasswordEncode);
		repo.save(user);
	}
	@Override
	public void userLogin(User user) {
		Optional<User> findById = repo.findById(user.getUserid());
		String username = findById.get().getUsername();
		String password = findById.get().getPassword();		
		encrypt.matches(password, user.getPassword());
	}
	
}
