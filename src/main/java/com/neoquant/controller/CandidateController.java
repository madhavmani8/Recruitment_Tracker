package com.neoquant.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.neoquant.model.Candidate;
import com.neoquant.service.CandidateService;

@Controller
public class CandidateController {

	@Autowired
	private CandidateService candidateservice;

	@PostMapping("/candidate")
	public String savecandidate(@ModelAttribute("candidate") Candidate candidate, ModelMap model, BindingResult error) {

		if (error.hasErrors()) {
			return "welcome";
		}
		candidateservice.save(candidate);
		return "welcome";
	}

	@RequestMapping("/candidate2")
	public String listCandidate(Model model) {

		List<Candidate> candidate = candidateservice.getAll();
		model.addAttribute("candidate", candidate);
		return "displaylist";
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") Long id) {
		System.out.println("Deleted id is " + id);
		candidateservice.delete(id);
		return "redirect:/welcome";
	}

	@RequestMapping("/candidate6")
	public String findCandidate(Model model, HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("n3");
		List<Candidate> candidate = candidateservice.findByName(name);
		model.addAttribute("candidate", candidate);
		return "displaylist";
	}

	@RequestMapping("/edit/{id}")
	public ModelAndView showEditProductPage(@PathVariable(name = "id") Long id) {
		ModelAndView mav = new ModelAndView("edit_candidate");
		Candidate candidate = candidateservice.getCandidateById(id);
		mav.addObject("candidate", candidate);
		return mav;
	}

	/*
	 * @RequestMapping(value="/editemp/{id}",method = RequestMethod.POST) public
	 * String edit(@PathVariable Long id, Model m){ Candidate
	 * candidate=candidateservice.getCandidateById(id);
	 * m.addAttribute("candidate",candidate); return "edit_candidate"; }
	 */

	@RequestMapping("/dashboard")
	public String getAllEmployees(@RequestParam(defaultValue = "0") Integer pageNo,
			@RequestParam(defaultValue = "8") Integer pageSize, @RequestParam(defaultValue = "id") String sortBy,
			ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		pageNo = Integer.parseInt(request.getParameter("pagenumber"));
		model.addAttribute("candidate", candidateservice.getAllEmployees(pageNo, pageSize, sortBy));
		return "display";
	}

}
