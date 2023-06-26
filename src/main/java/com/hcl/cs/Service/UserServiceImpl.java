package com.hcl.cs.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hcl.cs.Repo.PetDao;
import com.hcl.cs.Repo.UserDao;
import com.hcl.cs.model.User;


@Service
@Transactional
public class UserServiceImpl implements UserService{
	@Autowired
	UserDao userdao;
    
	@Autowired
	PetDao petsrepo;
	
	
	@Override
	public void save(User u) {
		userdao.save(u);
		
	}

	@Override
	public List<User> fetchAll() {
		return userdao.findAll();
	}

	@Override
	public User findByUsername(String username) {
		return userdao.findByUsername(username);
	}

	




	


	

}
