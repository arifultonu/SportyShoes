package com.ariful.sportyshoes.repository;

import com.ariful.sportyshoes.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CategoryRepository extends JpaRepository<Category, Long> {

	  Category findById(long id);
}
