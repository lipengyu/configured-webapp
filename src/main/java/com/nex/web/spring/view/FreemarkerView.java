package com.nex.web.spring.view;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.freemarker.FreeMarkerView;

import com.nex.web.freemarker.FreemarkerTemplateHelper;

public class FreemarkerView extends FreeMarkerView {

	private FreemarkerTemplateHelper templateHelper;
	
	public void setTemplateHelper(FreemarkerTemplateHelper templateHelper) {
		this.templateHelper = templateHelper;
	}
	
	@Override
	protected void doRender(Map<String, Object> model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		templateHelper.setRequest(request);
		request.setAttribute("_th", this.templateHelper);
		request.setAttribute("_sc", request.getServletPath());
		
		super.doRender(model, request, response);
	}
	
}
