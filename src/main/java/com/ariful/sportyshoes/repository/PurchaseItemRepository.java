package com.ariful.sportyshoes.repository;

import com.ariful.sportyshoes.model.PurchaseItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PurchaseItemRepository extends JpaRepository<PurchaseItem, Long> {
	
	  PurchaseItem findById(long id);
	
	  @Query("select pi from PurchaseItem pi where pi.purchaseId=?1")
	  List<PurchaseItem> getAllItemsByPurchaseId(long purchase_id);
	  
	  @Query("delete from PurchaseItem where purchaseId=?1")
	  List<PurchaseItem> deleteAllItemsByPurchaseId(long purchase_id);
}
