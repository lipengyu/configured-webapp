package com.nex.web.spring.controller.common;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nex.annotation.Logger;
import com.nex.security.permissions.NoAccessSecurityException;

@Controller("/error/")
@ControllerAdvice
@Logger
public class ExceptionController {

	@RequestMapping("{errorcode}")
	public String doError(@PathVariable(value="errorcode") int errorcode) {
		return "exceptions/error";
	}
	
	@ExceptionHandler(Exception.class)
	public void globalExceptionhandler(HttpServletResponse resp) {
		try {
			
			resp.sendError(500);
		} catch (IOException e) {
			log.error("", e);
		}
	}
	
	@ExceptionHandler(NoAccessSecurityException.class)
	public void noAccessHandler(HttpServletResponse resp) {
		try {
			resp.sendError(403);
		} catch (IOException e) {
			log.error("", e);
		}
	}
	
}
