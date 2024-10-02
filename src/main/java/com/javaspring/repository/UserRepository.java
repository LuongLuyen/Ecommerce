package com.javaspring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.javaspring.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long> {
	@Query(value = "SELECT * FROM users u WHERE BINARY u.username = :userName AND BINARY u.password = :password", nativeQuery = true)
	UserEntity findByUserNameAndPassword(@Param("userName") String userName, @Param("password") String password);
}