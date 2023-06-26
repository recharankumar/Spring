package com.hcl.cs.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;




@Entity
@Table(name= "user")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	 @Column(name="id")
	private Long id;
	private String username;
	private String password;
	@Transient
	private String confirmPassword;
	  @ElementCollection
	private Set<Pets> pet;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	 @OneToMany(cascade = CascadeType.ALL)
	    @JoinTable(name = "user_pets", joinColumns = @JoinColumn(name = "id"), inverseJoinColumns = @JoinColumn(name = "Petid"))
	public Set<Pets> getPet() {
		return pet;
	}
	public void setPet(Set<Pets> pet) {
		this.pet = pet;
	}
	public User(Long id, String username, String password, String confirmPassword) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.confirmPassword = confirmPassword;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	

}
