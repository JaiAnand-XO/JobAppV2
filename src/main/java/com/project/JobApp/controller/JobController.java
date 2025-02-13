package com.project.JobApp.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.JobApp.model.JobPost;
import com.project.JobApp.service.JobService;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import jakarta.validation.Valid;


@Controller
public class JobController {

	@Autowired
	private JobService service;

	// ************************************************************************

	@RequestMapping({"/","/home"})
	public String home() {
		return "home";
	}

	// ************************************************************************

	@RequestMapping("/addjob")
	public String addJob() {
		return "addjob";
	}

	@GetMapping("/addjob")
	public String showAddJobForm(Model model) {
		model.addAttribute("jobPost", new JobPost()); // Key "jobPost" must match form's modelAttribute
		return "addjob"; // Name of your JSP view
	}

	// ************************************************************************
	@GetMapping("/viewpolicy")
	public String viewPolicy(){return "policy";}

	// ************************************************************************

	// controller method for getting all job posts
	@GetMapping("/viewalljobs")
	public String viewJobs(Model model) {

		List<JobPost> jobPosts = service.returnAllJobPosts();
		model.addAttribute("jobPosts", jobPosts);
		return "viewalljobs";
	}
	
	// ************************************************************************

//	@PostMapping("/handleForm")
//	public String handleAddJobForm(JobPost jobPost,Model model) {
//		model.addAttribute("jobPost", jobPost);
//		service.addJobPost(jobPost);
//		//System.out.println(jobPost);
//		  return "success";
//
//	}
@PostMapping("/handleForm")
public String handleAddJobForm(
	@Valid	@ModelAttribute("jobPost") JobPost jobPost,
							   BindingResult result,
							   Model model,
							   RedirectAttributes redirectAttributes) {
	// Check for validation errors
	if (result.hasErrors()) {
		for (FieldError error : result.getFieldErrors()) {
			redirectAttributes.addFlashAttribute("errorMessage", error.getDefaultMessage());
		}
		return "redirect:/addjob"; // Redirect back to the form
	}

	// Save job post if no errors
	service.addJobPost(jobPost);
	return "success"; // Redirect to success page
}
	


	
	
	
	
	
	
	
	
	
	
}
