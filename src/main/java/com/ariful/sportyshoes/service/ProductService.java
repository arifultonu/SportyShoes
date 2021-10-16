package com.ariful.sportyshoes.service;

import com.ariful.sportyshoes.model.*;
import com.ariful.sportyshoes.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ProductService {

	@Autowired
	private ProductRepository repo;
	
	public List<Product> listAll() {
		return repo.findAll();
	}
	
	public void save(Product product) {
		repo.save(product);
	}
	
	public void updateProduct(Product product) {
		repo.save(product);
	}
	
	public Product getProductById(long id) {
		return repo.findById(id);
	}
	
	public void deleteProduct(long id) {
		repo.deleteById(id);
	}
}
