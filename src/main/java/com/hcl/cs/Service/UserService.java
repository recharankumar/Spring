package com.hcl.cs.Service;

import java.util.List;

import com.hcl.cs.model.User;
public interface UserService {
	public  void save(User u);

	public List<User> fetchAll();

	public User findByUsername(String username);
	
}
