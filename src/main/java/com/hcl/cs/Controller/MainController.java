package com.hcl.cs.Controller;

import java.util.List;
import java.util.Random;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.hcl.cs.Service.PetService;
import com.hcl.cs.Service.UserService;
import com.hcl.cs.model.Pets;
import com.hcl.cs.model.User;


@Controller
public class MainController {
	
	@Autowired
	UserService userservice;
	@Autowired
	PetService petservice;
	

	 
	@GetMapping("/")
	public String welcome() {
		return "WelcomePage";
	}

	@GetMapping("/registrationPage")
	public String Userlogin(Model model) {
		model.addAttribute("userform", new User());
		return "registrationPage";
	}
	@PostMapping("/save")
	public String saveUser(@Valid @ModelAttribute("userform") User User,Model model,BindingResult result) {
		String resultpage="";
		if(result.hasErrors()) {
			resultpage="registrationPage";
		}
		else {

		userservice.save(User);
		resultpage= "redirect:/login";
		}
		return resultpage;
	}
	@GetMapping("/login")
	 public String login(Model model) {
		model.addAttribute("loginform", new User());

        return "loginPage";
    }
	@PostMapping("/home")
	public String home(@Valid @ModelAttribute("loginform") User user,Model model) {
		String str=null;
		List<User> list=userservice.fetchAll();
		for(User u:list) {
			if((user.getUsername().equals(u.getUsername())) && (user.getPassword().equals(u.getPassword()))) {
				model.addAttribute("userdetails", user);
				List<Pets> list1=petservice.fetchAll();
				model.addAttribute("petsList",list1);
				str= "homePage";
				break;
			}
			else {
				str= "redirect:/login";
			}
		}
		return str;
		
	}
	@GetMapping("/add")
	public String addpet(Model model) {
		model.addAttribute("addpet", new Pets());
		return "addPet";
	}
	@PostMapping("/savepet")
	public String PetsAdded(@ModelAttribute("addpet") Pets pet,Model model,BindingResult result) {
		String resultpage="";
		if(result.hasErrors()) {
			resultpage="/add";
		}
		else {

			petservice.savepet(pet);
			resultpage="redirect:/getpets";
		}
		return resultpage;
	}
	@GetMapping("/getpets")
	public String getPets(Model model) {
		List<Pets> list=petservice.fetchAll();
		model.addAttribute("petsList",list);
		return"homePage";
	}
	
	@PostMapping("/buy")
	public String myPet(@Valid @ModelAttribute("mypet")Pets  pets,Model model,BindingResult result1) {

		String resultpage1="";
		if(result1.hasErrors()) {
			resultpage1="homePage";
		}
		else {

		petservice.savepet(pets);
		resultpage1= "redirect:/buy";
		}
		return resultpage1;
		}     


}
