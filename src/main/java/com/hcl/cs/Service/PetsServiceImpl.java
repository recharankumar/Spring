package com.hcl.cs.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hcl.cs.Repo.PetDao;
import com.hcl.cs.model.Pets;



@Service
@Transactional
public class PetsServiceImpl implements PetService{
	
	@Autowired
	PetDao petsrepo;

	@Override
	public void savepet(Pets pet) {
		petsrepo.save(pet);
		
	}

	@Override
	public List<Pets> fetchAll() {
		return petsrepo.findAll();
	}

	

}
