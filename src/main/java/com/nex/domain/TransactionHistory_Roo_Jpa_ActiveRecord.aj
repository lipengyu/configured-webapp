// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nex.domain;

import com.nex.domain.TransactionHistory;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TransactionHistory_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext(unitName = "puCulfinder")
    transient EntityManager TransactionHistory.entityManager;
    
    public static final EntityManager TransactionHistory.entityManager() {
        EntityManager em = new TransactionHistory().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TransactionHistory.countTransactionHistorys() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TransactionHistory o", Long.class).getSingleResult();
    }
    
    public static List<TransactionHistory> TransactionHistory.findAllTransactionHistorys() {
        return entityManager().createQuery("SELECT o FROM TransactionHistory o", TransactionHistory.class).getResultList();
    }
    
    public static TransactionHistory TransactionHistory.findTransactionHistory(Long id) {
        if (id == null) return null;
        return entityManager().find(TransactionHistory.class, id);
    }
    
    public static List<TransactionHistory> TransactionHistory.findTransactionHistoryEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TransactionHistory o", TransactionHistory.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TransactionHistory.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TransactionHistory.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TransactionHistory attached = TransactionHistory.findTransactionHistory(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TransactionHistory.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TransactionHistory.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TransactionHistory TransactionHistory.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TransactionHistory merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
