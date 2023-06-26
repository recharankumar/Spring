package com.hcl.cs.Service;

import java.util.List;

import com.hcl.cs.model.Pets;



public interface PetService {
	public void savepet(Pets pet);
	public List<Pets> fetchAll();
}
