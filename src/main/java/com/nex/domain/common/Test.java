package com.nex.domain.common;

import javax.persistence.Id;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;

@RooJpaActiveRecord(table="test_table", versionField="", persistenceUnit="puCulfinder")
@RooJavaBean
public class Test {
	
	@Id
	private Long id;
	
	private String text;
	
}
