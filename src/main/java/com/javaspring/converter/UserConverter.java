package com.javaspring.converter;

import org.springframework.stereotype.Component;

import com.javaspring.dto.UserDto;
import com.javaspring.entity.UserEntity;

@Component
public class UserConverter {
	public UserDto toDto(UserEntity entity) {
		UserDto result = new UserDto();
		if (entity!= null) {
			result.setId(entity.getId());
			result.setUserName(entity.getFullName());
			result.setPassword(entity.getPassword());
			result.setFullName(entity.getFullName());
			result.setPhone(entity.getPhone());
			result.setEmail(entity.getEmail());
			return result;
		}
		return result;
	}
	public UserEntity toEntity(UserDto dto) {
		UserEntity result = new UserEntity();
		result.setUserName(dto.getFullName());
		result.setPassword(dto.getPassword());
		result.setFullName(dto.getFullName());
		result.setPhone(dto.getPhone());
		result.setEmail(dto.getEmail());
		return result;
	}
	public UserEntity toEntity(UserEntity result, UserDto dto) {
		result.setUserName(dto.getFullName());
		result.setPassword(dto.getPassword());
		result.setFullName(dto.getFullName());
		result.setPhone(dto.getPhone());
		result.setEmail(dto.getEmail());
		return result;
	}
}
