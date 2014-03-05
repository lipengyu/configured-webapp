package com.nex.domain;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;

import com.nex.domain.localizedfield.LocalizedFieldNormal;

@RooJavaBean
@RooJpaActiveRecord(persistenceUnit = "puCulfinder", table = "cultural_type_text", versionField="")
public class CulturalTypeText implements LocalizedFieldNormal {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@ManyToOne
	@JoinColumn(name = "cultural_type_id", insertable = false, updatable = false)
	private CulturalType localizable;	
}
