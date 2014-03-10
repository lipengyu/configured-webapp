// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nex.domain;

import com.nex.domain.Genre;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Genre_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext(unitName = "puPsyartists")
    transient EntityManager Genre.entityManager;
    
    public static final EntityManager Genre.entityManager() {
        EntityManager em = new Genre().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Genre.countGenres() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Genre o", Long.class).getSingleResult();
    }
    
    public static List<Genre> Genre.findAllGenres() {
        return entityManager().createQuery("SELECT o FROM Genre o", Genre.class).getResultList();
    }
    
    public static Genre Genre.findGenre(Long id) {
        if (id == null) return null;
        return entityManager().find(Genre.class, id);
    }
    
    public static List<Genre> Genre.findGenreEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Genre o", Genre.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Genre.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Genre.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Genre attached = Genre.findGenre(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Genre.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Genre.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Genre Genre.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Genre merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}