package com.tka.service;

import com.tka.dao.ProductDao;
import com.tka.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

	@Autowired
	ProductDao productDao;

	public boolean addProduct(Product product) {
		if (product.getPid() == 0) {
			return productDao.addProduct(product);
		}
		return false;
	}

	public boolean updateProduct(Product product) {
		if (product.getPid() > 0) {
			Product existingProduct = productDao.getProductById(product.getPid());
			if (existingProduct != null) {
				return productDao.updateProduct(product);
			}
		}
		return false;
	}

	public Product getProductById(int pid) {
		return productDao.getProductById(pid);
	}

	public List<Product> getAllProducts() {
		return productDao.getAllProducts();
	}

	public boolean deleteProduct(int pid) {
		return productDao.deleteProduct(pid);
	}
}
