// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nex.domain;

import com.nex.domain.Sample;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Sample_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext(unitName = "puPsyartists")
    transient EntityManager Sample.entityManager;
    
    public static final EntityManager Sample.entityManager() {
        EntityManager em = new Sample().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Sample.countSamples() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Sample o", Long.class).getSingleResult();
    }
    
    public static List<Sample> Sample.findAllSamples() {
        return entityManager().createQuery("SELECT o FROM Sample o", Sample.class).getResultList();
    }
    
    public static Sample Sample.findSample(Long id) {
        if (id == null) return null;
        return entityManager().find(Sample.class, id);
    }
    
    public static List<Sample> Sample.findSampleEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Sample o", Sample.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Sample.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Sample.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Sample attached = Sample.findSample(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Sample.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Sample.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Sample Sample.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Sample merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
