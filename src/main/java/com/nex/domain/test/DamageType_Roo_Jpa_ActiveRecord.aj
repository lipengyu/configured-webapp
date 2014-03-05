// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nex.domain.test;

import com.nex.domain.test.DamageType;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DamageType_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext(unitName = "puCah")
    transient EntityManager DamageType.entityManager;
    
    public static final EntityManager DamageType.entityManager() {
        EntityManager em = new DamageType().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DamageType.countDamageTypes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DamageType o", Long.class).getSingleResult();
    }
    
    public static List<DamageType> DamageType.findAllDamageTypes() {
        return entityManager().createQuery("SELECT o FROM DamageType o", DamageType.class).getResultList();
    }
    
    public static DamageType DamageType.findDamageType(Long id) {
        if (id == null) return null;
        return entityManager().find(DamageType.class, id);
    }
    
    public static List<DamageType> DamageType.findDamageTypeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DamageType o", DamageType.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void DamageType.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DamageType.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DamageType attached = DamageType.findDamageType(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DamageType.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DamageType.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DamageType DamageType.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DamageType merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
