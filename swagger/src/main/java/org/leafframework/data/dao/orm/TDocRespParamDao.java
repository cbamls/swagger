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
 * Home object for domain model class TDocRespParam.
 * @see TDocRespParam
 * @author Hibernate Tools
 */
@Repository
public class TDocRespParamDao implements IDao{

    private static final Log log = LogFactory.getLog(TDocRespParamDao.class);

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
    
    public void persist(TDocRespParam transientInstance) {
        //log.debug("persisting TDocRespParam instance");
        try {
            sessionFactory.getCurrentSession().persist(transientInstance);
            //log.debug("persist successful");
        }
        catch (RuntimeException re) {
            //log.error("persist failed", re);
            throw re;
        }
    }
    
    public void attachDirty(TDocRespParam instance) {
        //log.debug("attaching dirty TDocRespParam instance");
        try {
            sessionFactory.getCurrentSession().saveOrUpdate(instance);
            //log.debug("attach successful");
        }
        catch (RuntimeException re) {
            //log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(TDocRespParam instance) {
        //log.debug("attaching clean TDocRespParam instance");
        try {
            sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
            //log.debug("attach successful");
        }
        catch (RuntimeException re) {
            //log.error("attach failed", re);
            throw re;
        }
    }
    
    public void delete(TDocRespParam persistentInstance) {
        //log.debug("deleting TDocRespParam instance");
        try {
            sessionFactory.getCurrentSession().delete(persistentInstance);
            //log.debug("delete successful");
        }
        catch (RuntimeException re) {
            //log.error("delete failed", re);
            throw re;
        }
    }
    
    public TDocRespParam merge(TDocRespParam detachedInstance) {
        //log.debug("merging TDocRespParam instance");
        try {
            TDocRespParam result = (TDocRespParam) sessionFactory.getCurrentSession()
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
    	//log.debug("findAll TDocRespParam instance");
		try {
				return sessionFactory.getCurrentSession().createQuery("from " + TDocRespParam.class.getName()).list();
		} catch (RuntimeException re) {
			//log.error("findAll failed", re);
			throw re;
		}		
	}    
    public TDocRespParam findById( Integer id) {
        //log.debug("getting TDocRespParam instance with id: " + id);
        try {
            TDocRespParam instance = (TDocRespParam) sessionFactory.getCurrentSession()
                    .get("org.leafframework.data.dao.orm.TDocRespParam", id);
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
    
    public List<TDocRespParam> findByExample(TDocRespParam instance) {
        //log.debug("finding TDocRespParam instance by example");
        try {
            List<TDocRespParam> results = (List<TDocRespParam>) sessionFactory.getCurrentSession()
                    .createCriteria("org.leafframework.data.dao.orm.TDocRespParam")
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

