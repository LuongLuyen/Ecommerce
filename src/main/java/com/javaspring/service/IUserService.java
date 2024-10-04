package com.javaspring.service;

import java.util.List;

import com.javaspring.dto.UserDto;

public interface IUserService {
	List<UserDto> findAll();
	UserDto save(UserDto dto);
	void delete(long[] ids);
	UserDto login(String userName, String password);
	UserDto findOne(Long id);
}
