package com.ariful.sportyshoes.repository;

import com.ariful.sportyshoes.model.Purchase;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;


public interface PurchaseRepository extends JpaRepository<Purchase, Long> {
	
	  Purchase findById(long id);

	  @Query("select p from Purchase p where p.userId = ?1 order by ID desc")
	  List<Purchase> getAllItemsByUserId(long userId);
}
