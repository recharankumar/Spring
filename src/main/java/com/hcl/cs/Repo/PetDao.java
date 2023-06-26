package com.hcl.cs.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hcl.cs.model.Pets;


@Repository
public interface PetDao extends JpaRepository<Pets,Long>{

}
