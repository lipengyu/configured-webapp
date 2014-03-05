package com.nex.web.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nex.domain.CulturalType;

@Controller
@RequestMapping("/")
public class RootController {

//	@Resource(name="jpqlfilter")
//	private FilterUtil jpqlfilter;
	
	@RequestMapping
	private String index(Model uiModel) {
		uiModel.addAttribute("types", CulturalType.findAllCulturalTypes());
		return "index";
	}
}
