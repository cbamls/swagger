package org.leafframework.data.dao.orm;
// Generated 2016-7-24 17:04:35 by Hibernate Tools 4.3.1

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.leafframework.data.dao.IDao;

import java.util.List;
import javax.naming.InitialContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import static org.hibernate.criterion.Example.create;

/**
 * Home object for domain model class TDocPathItem.
 * @see TDocPathItem
 * @author Hibernate Tools
 */
@Repository
public class TDocPathItemDao implements IDao{

    private static final Log log = LogFactory.getLog(TDocPathItemDao.class);

    @Autowired
    private final SessionFactory sessionFactory = null;
    /* private final SessionFactory sessionFactory = getSessionFactory();
    
    protected SessionFactory getSessionFactory() {
        try {
            return (SessionFactory) new InitialContext().lookup("SessionFactory");
        }
        catch (Exception e) {
            //log.error("Could not locate SessionFactory in JNDI", e);
            throw new IllegalStateException("Could not locate SessionFactory in JNDI");
        }
    }*/
    
    public void persist(TDocPathItem transientInstance) {
        //log.debug("persisting TDocPathItem instance");
        try {
            sessionFactory.getCurrentSession().persist(transientInstance);
            //log.debug("persist successful");
        }
        catch (RuntimeException re) {
            //log.error("persist failed", re);
            throw re;
        }
    }
    
    public void attachDirty(TDocPathItem instance) {
        //log.debug("attaching dirty TDocPathItem instance");
        try {
            sessionFactory.getCurrentSession().saveOrUpdate(instance);
            //log.debug("attach successful");
        }
        catch (RuntimeException re) {
            //log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(TDocPathItem instance) {
        //log.debug("attaching clean TDocPathItem instance");
        try {
            sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
            //log.debug("attach successful");
        }
        catch (RuntimeException re) {
            //log.error("attach failed", re);
            throw re;
        }
    }
    
    public void delete(TDocPathItem persistentInstance) {
        //log.debug("deleting TDocPathItem instance");
        try {
            sessionFactory.getCurrentSession().delete(persistentInstance);
            //log.debug("delete successful");
        }
        catch (RuntimeException re) {
            //log.error("delete failed", re);
            throw re;
        }
    }
    
    public TDocPathItem merge(TDocPathItem detachedInstance) {
        //log.debug("merging TDocPathItem instance");
        try {
            TDocPathItem result = (TDocPathItem) sessionFactory.getCurrentSession()
                    .merge(detachedInstance);
            //log.debug("merge successful");
            return result;
        }
        catch (RuntimeException re) {
            //log.error("merge failed", re);
            throw re;
        }
    }
    public List findAll() {
    	//log.debug("findAll TDocPathItem instance");
		try {
				return sessionFactory.getCurrentSession().createQuery("from " + TDocPathItem.class.getName()).list();
		} catch (RuntimeException re) {
			//log.error("findAll failed", re);
			throw re;
		}		
	}    
    public TDocPathItem findById( Integer id) {
        //log.debug("getting TDocPathItem instance with id: " + id);
        try {
            TDocPathItem instance = (TDocPathItem) sessionFactory.getCurrentSession()
                    .get("org.leafframework.data.dao.orm.TDocPathItem", id);
            if (instance==null) {
                //log.debug("get successful, no instance found");
            }
            else {
                //log.debug("get successful, instance found");
            }
            return instance;
        }
        catch (RuntimeException re) {
            //log.error("get failed", re);
            throw re;
        }
    }
    
    public List<TDocPathItem> findByExample(TDocPathItem instance) {
        //log.debug("finding TDocPathItem instance by example");
        try {
            List<TDocPathItem> results = (List<TDocPathItem>) sessionFactory.getCurrentSession()
                    .createCriteria("org.leafframework.data.dao.orm.TDocPathItem")
                    .add( create(instance) )
            .list();
            //log.debug("find by example successful, result size: " + results.size());
            return results;
        }
        catch (RuntimeException re) {
            //log.error("find by example failed", re);
            throw re;
        }
    } 
}

