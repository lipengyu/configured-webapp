package com.nex.web.freemarker;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.support.DelegatingMessageSource;
import org.springframework.web.servlet.support.RequestContextUtils;

public class FreemarkerTemplateHelper {
	Logger log = LoggerFactory.getLogger(FreemarkerTemplateHelper.class);
	private DelegatingMessageSource messageSource;
	private HttpServletRequest request;
	
	public void setMessageSource(DelegatingMessageSource messageSource) {
		this.messageSource = messageSource;
	}
	
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	public String getMessage(String code, String[] args) {
		return this.messageSource.getMessage(code, args, getLocale());
	}
	public Locale getLocale() {
		return RequestContextUtils.getLocale(request);
	}
}
