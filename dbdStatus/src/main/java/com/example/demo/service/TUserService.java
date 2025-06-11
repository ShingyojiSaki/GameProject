package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.entity.TUser;
import com.example.demo.dao.mapper.TUserMapper;

@Service
public class TUserService {

	@Autowired
	TUserMapper tUserMapper;

	public TUser selectByPrimaryKey(String userId) {

		TUser tUser = tUserMapper.selectByPrimaryKey(userId);

		return tUser;

	}

	public void insertTUser(String userId, String userName) {

		TUser tUser = new TUser();
		tUser.setUserid(userId);
		tUser.setUsername(userName);

		tUserMapper.insert(tUser);
	}

}
