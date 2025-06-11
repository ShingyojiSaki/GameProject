package com.example.demo.dao.mapper;

import com.example.demo.dao.entity.TUser;

public interface TUserMapper {

	public int insert(TUser tUser);

	public TUser selectByPrimaryKey(String userid);

}
