package com.nex.domain.test;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;

import com.nex.domain.localizedfield.LocalizedEntity;
import com.nex.domain.localizedfield.LocalizedField;

@RooJavaBean
@RooJpaActiveRecord(persistenceUnit = "puCah", table = "damagetypes")
public class DamageType implements LocalizedEntity {
	
	@Id
	@GeneratedValue(generator = "DAMAGETYPE_SEQ", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(sequenceName = "DAMAGETYPE_SEQ", name = "DAMAGETYPE_SEQ", allocationSize = 1)
	private Long id;
	
	@OneToMany(targetEntity = DamageTypeText.class, fetch = FetchType.EAGER, cascade = CascadeType.ALL, orphanRemoval = true)
	@JoinColumn(name = "damagetypes_id", nullable = false)
	private List<LocalizedField> localizedTexts = new ArrayList<LocalizedField>();

}
