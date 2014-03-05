package com.nex.domain.common;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Configurable;

import cz.tsystems.common.data.entitymanager.EntityManagerAccessor;

@Configurable
public class CulFinderEntityManagerAccessor implements EntityManagerAccessor { 
	
	@PersistenceContext(unitName = "puCulfinder")
	private EntityManager entityManager;


	public CulFinderEntityManagerAccessor() {
	}
	
	public EntityManager getEntityManager() {
		return entityManager;
	}
	
}
