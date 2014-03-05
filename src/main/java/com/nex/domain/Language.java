package com.nex.domain;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.TypedQuery;
import javax.xml.bind.annotation.XmlType;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;

import com.nex.annotation.Publicable;
import com.nex.domain.common.Entity;

@RooJavaBean
@RooJpaActiveRecord(persistenceUnit = "puCulfinder", table = "language", versionField="")
//@Publicable
public class Language implements Entity {

	private static final long serialVersionUID = -6935340465225424438L;
	
	@Id
	private String id;
	private String name;
	
	
//	public static List<Language> findByPublished(Boolean published) {
//        TypedQuery<Language> query = entityManager().createQuery("SELECT o FROM Language o where o.published=:published", Language.class);
//        query.setParameter("published", published);
//        return query.getResultList();
//    }
}
