package com.nex.web.spring.view;

import java.util.Locale;

import org.springframework.web.servlet.View;

import com.nex.web.freemarker.FreemarkerTemplateHelper;

public class FreemarkerViewResolver extends org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver {
	
	private FreemarkerTemplateHelper templateHelper;
	public void setTemplateHelper(FreemarkerTemplateHelper templateHelper) {
		this.templateHelper = templateHelper;
	}
	
	@Override
	protected View createView(String viewName, Locale locale) throws Exception {
		FreemarkerView view = (FreemarkerView) super.createView(viewName, locale);
		view.setTemplateHelper(templateHelper);
		return view;
	}
	
}
