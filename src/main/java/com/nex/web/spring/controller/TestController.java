package com.nex.web.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nex.domain.common.Test;
import com.nex.logback.configuration.LogBackConfigurator;

@Controller
@RequestMapping("/test/")
public class TestController {
	
	@RequestMapping("hibernate")
	public String hibernateTest(Model uiModel) {
		Test test = Test.findTest(1L);
		uiModel.addAttribute("entity", test);
		return "test/hibernate";
	}
	
}
