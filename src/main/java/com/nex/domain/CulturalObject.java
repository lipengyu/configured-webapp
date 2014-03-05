package com.nex.domain;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;

import com.nex.domain.common.Entity;


@RooJavaBean
@RooJpaActiveRecord(persistenceUnit = "puCulfinder", table = "cultural_obj", versionField="")
public class CulturalObject implements Entity {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;
	
	@ManyToOne
	@JoinColumn(name = "cultural_type_id")
	private CulturalType type;
	
	private String latitude;
	private String longitude;
	private Long visited;
	private String name;
}
