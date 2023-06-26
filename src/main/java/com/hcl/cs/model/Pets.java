package com.hcl.cs.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="pets")
public class Pets {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	 @Column(name="petid")
	private Long Petid;
	private String petname;
	private Integer Petage;
	private String Petplace;
	public Long getPetid() {
		return Petid;
	}
	public void setPetid(Long petid) {
		Petid = petid;
	}
	public String getPetname() {
		return petname;
	}
	public void setPetname(String petname) {
		this.petname = petname;
	}
	public Integer getPetage() {
		return Petage;
	}
	public void setPetage(Integer petage) {
		Petage = petage;
	}
	public String getPetplace() {
		return Petplace;
	}
	public void setPetplace(String petplace) {
		Petplace = petplace;
	}
	public Pets(Long petid, String petname, Integer petage, String petplace) {
		super();
		Petid = petid;
		this.petname = petname;
		Petage = petage;
		Petplace = petplace;
	}
	public Pets() {
		super();
		// TODO Auto-generated constructor stub
	}


	

}
