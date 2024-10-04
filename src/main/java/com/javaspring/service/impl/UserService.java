package com.javaspring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaspring.converter.UserConverter;
import com.javaspring.dto.UserDto;
import com.javaspring.entity.UserEntity;
import com.javaspring.repository.UserRepository;
import com.javaspring.service.IUserService;

@Service
public class UserService implements IUserService {

	@Autowired
	private UserRepository userRepository;
	@Autowired
	private UserConverter userConverter;

	@Override
	public List<UserDto> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDto save(UserDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(long[] ids) {
		// TODO Auto-generated method stub

	}

	@Override
	public UserDto login(String userName, String password) {
		UserEntity userEntity = new UserEntity();
		userEntity = userRepository.findByUserNameAndPassword(userName, password);
		return userConverter.toDto(userEntity);
	}

	@Override
	public UserDto findOne(Long id) {
		UserEntity userEntity = new UserEntity();
		userEntity = userRepository.findOne(id);
		return userConverter.toDto(userEntity);
	}

}
