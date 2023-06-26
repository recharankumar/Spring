package com.hcl.cs.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hcl.cs.model.User;
@Repository
public interface UserDao extends JpaRepository<User,Long>{

	User findByUsername(String username);
	
}