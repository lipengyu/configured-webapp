package com.nex.web.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.nex.annotation.Logger;
import com.nex.domain.Role;
import com.nex.domain.User;
import com.nex.web.spring.controller.common.RejectErrorController;

@Controller
@RequestMapping("/register/")
@Logger
public class RegistrationController extends RejectErrorController {

	@ModelAttribute("user")
	public User createNewUser() {
		return new User();
	}

	@RequestMapping
	private String showForm() {
		return "register";
	}

	@RequestMapping(method = RequestMethod.POST)
	private String save(@ModelAttribute("user") @Valid User user,
			Errors errors, HttpServletRequest request) {
		check: if (!errors.hasErrors()) {
			try {
				user.setRoles(Role.findAllRoles());
				user.persist();
				user.flush();
			} catch (Exception e) {
				log.error("", e);
				break check;
			}
			return "redirect:/web/login";
		}
		user.setPassword(null);
		user.setMatchPassword(null);
		rejectFormErrors(RequestContextUtils.getLocale(request), errors);
		return "register";
	}
}
