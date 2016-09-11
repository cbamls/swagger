package org.leafframework.data.dao.orm;
// Generated 2016-8-7 22:29:40 by Hibernate Tools 4.3.1

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
 * Home object for domain model class TDocOtherInfo.
 * @see TDocOtherInfo
 * @author Hibernate Tools
 */
@Repository
public class TDocOtherInfoDao implements IDao{

    private static final Log log = LogFactory.getLog(TDocOtherInfoDao.class);

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
    
    public void persist(TDocOtherInfo transientInstance) {
        //log.debug("persisting TDocOtherInfo instance");
        try {
            sessionFactory.getCurrentSession().persist(transientInstance);
            //log.debug("persist successful");
        }
        catch (RuntimeException re) {
            //log.error("persist failed", re);
            throw re;
        }
    }
    
    public void attachDirty(TDocOtherInfo instance) {
        //log.debug("attaching dirty TDocOtherInfo instance");
        try {
            sessionFactory.getCurrentSession().saveOrUpdate(instance);
            //log.debug("attach successful");
        }
        catch (RuntimeException re) {
            //log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(TDocOtherInfo instance) {
        //log.debug("attaching clean TDocOtherInfo instance");
        try {
            sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
            //log.debug("attach successful");
        }
        catch (RuntimeException re) {
            //log.error("attach failed", re);
            throw re;
        }
    }
    
    public void delete(TDocOtherInfo persistentInstance) {
        //log.debug("deleting TDocOtherInfo instance");
        try {
            sessionFactory.getCurrentSession().delete(persistentInstance);
            //log.debug("delete successful");
        }
        catch (RuntimeException re) {
            //log.error("delete failed", re);
            throw re;
        }
    }
    
    public TDocOtherInfo merge(TDocOtherInfo detachedInstance) {
        //log.debug("merging TDocOtherInfo instance");
        try {
            TDocOtherInfo result = (TDocOtherInfo) sessionFactory.getCurrentSession()
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
    	//log.debug("findAll TDocOtherInfo instance");
		try {
				return sessionFactory.getCurrentSession().createQuery("from " + TDocOtherInfo.class.getName()).list();
		} catch (RuntimeException re) {
			//log.error("findAll failed", re);
			throw re;
		}		
	}    
    public TDocOtherInfo findById( Integer id) {
        //log.debug("getting TDocOtherInfo instance with id: " + id);
        try {
            TDocOtherInfo instance = (TDocOtherInfo) sessionFactory.getCurrentSession()
                    .get("org.leafframework.data.dao.orm.TDocOtherInfo", id);
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
    
    public List<TDocOtherInfo> findByExample(TDocOtherInfo instance) {
        //log.debug("finding TDocOtherInfo instance by example");
        try {
            List<TDocOtherInfo> results = (List<TDocOtherInfo>) sessionFactory.getCurrentSession()
                    .createCriteria("org.leafframework.data.dao.orm.TDocOtherInfo")
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

