package com.nex.domain.test;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;

import com.nex.domain.localizedfield.LocalizedFieldNormal;

@RooJavaBean
@RooJpaActiveRecord(persistenceUnit = "puCah", table = "damagetypes_text")
public class DamageTypeText implements LocalizedFieldNormal {
	
	@Id
	@GeneratedValue(generator = "DAMAGETYPE_TEXT_SEQ", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(sequenceName = "DAMAGETYPE_TEXT_SEQ", name = "DAMAGETYPE_TEXT_SEQ", allocationSize = 1)
	private Long id;

	@ManyToOne
	@JoinColumn(name = "damagetypes_id", insertable = false, updatable = false)
	private DamageType localizable;	
}
