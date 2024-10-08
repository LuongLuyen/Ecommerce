package com.javaspring.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Payments")
public class PaymentEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	// n-1 payment-user
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name ="userid")
    private UserEntity user;
    
    // n-1 payment-product
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name ="productid")
    private ProductEntity product;
 	
	// n-1 payment-card
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name ="cardid")
    private CardEntity card;

}
