package test;


import junit.framework.TestCase;

import org.hibernate.Session;
import org.hibernate.Transaction;

import util.HibernateUtil;
import model.User;

public class TestSaveUser extends TestCase{

	public void testSave(){
		User user = new User();
		user.setName("apple");
		user.setPassword("123456");
		Session session = util.HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.save(user);
		tx.commit();
		session.close();
		HibernateUtil.shutdown();
	}
}
