package com.tka.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tka.entity.Product;

@Repository
public class ProductDao {

	@Autowired
	SessionFactory factory;

	public boolean addProduct(Product product) {
		System.err.println("In DAO - addProduct");
		Session session = factory.openSession();
		session.beginTransaction();
		session.save(product);
		session.getTransaction().commit();
		System.out.println("ProductDao > Product inserted into DB");
		Product productDb = session.get(Product.class, product.getPid());
		if (productDb != null) {
			return true;
		}
		return false;
	}

	public boolean updateProduct(Product product) {
		System.err.println("In DAO - updateProduct");
		Session session = factory.openSession();
		session.beginTransaction();
		session.update(product);
		session.getTransaction().commit();
		Product updatedProduct = session.get(Product.class, product.getPid());
		return updatedProduct != null;
	}

	public Product getProductById(int pid) {
		System.err.println("In DAO - getProductById");
		Session session = factory.openSession();
		Product product = session.get(Product.class, pid);
		return product;
	}

	public List<Product> getAllProducts() {
		System.err.println("In DAO - getAllProducts");
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Product.class);
		List<Product> productList = criteria.list();
		return productList;
	}

	public boolean deleteProduct(int pid) {
		System.err.println("In DAO - deleteProduct");
		Session session = factory.openSession();
		session.beginTransaction();
		Product product = session.get(Product.class, pid);
		if (product != null) {
			session.delete(product);
			session.getTransaction().commit();
			return true;
		}
		return false;
	}
	
}
