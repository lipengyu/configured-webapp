package com.nex.web.spring.view;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.web.servlet.support.RequestContext;
import org.springframework.web.servlet.view.freemarker.FreeMarkerView;

import com.nex.web.freemarker.FreemarkerTemplateHelper;

public class FreemarkerView extends FreeMarkerView {

	@Override
	protected void doRender(Map<String, Object> model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RequestContext requestContext = (RequestContext) model
				.get(SPRING_MACRO_REQUEST_CONTEXT_ATTRIBUTE);
		FreemarkerTemplateHelper templateHelper = new FreemarkerTemplateHelper(
				requestContext);
		request.setAttribute("_th", templateHelper);
		request.setAttribute("_sc", request.getServletPath());

		super.doRender(model, request, response);
	}

}
