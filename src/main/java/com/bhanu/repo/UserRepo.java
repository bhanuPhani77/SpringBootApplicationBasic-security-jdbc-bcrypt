package com.bhanu.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bhanu.Entity.User;

public interface UserRepo extends JpaRepository<User, Integer>{

}
