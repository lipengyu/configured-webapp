package com.nex.web.spring.controller.frontend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/search/")
public class SearchingController {
	
	
	@ModelAttribute("searchForm")
	public SearchForm loadSearchForm() {
		return new SearchForm();
	}
	@RequestMapping
	public String display() {
		
		return "search/display";
	}
	@RequestMapping(method=RequestMethod.POST)
	public String search(@ModelAttribute("searchForm") SearchForm form) {
		
		return "search/display";
	}
	public class SearchForm {
		private String longitude;
		private String latitude;
		public String getLongitude() {
			return longitude;
		}
		public void setLongitude(String longitude) {
			this.longitude = longitude;
		}
		public String getLatitude() {
			return latitude;
		}
		public void setLatitude(String latitude) {
			this.latitude = latitude;
		}
		
	}
	
}
