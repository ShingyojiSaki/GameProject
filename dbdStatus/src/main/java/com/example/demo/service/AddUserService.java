package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddUserService {

	@Autowired
	TUserService tUserService;

	/**
	 * ユーザIDが重複してないかチェック
	 * @param userId ユーザID
	 * @return true...重複なし false...重複あり
	 */
	public boolean checkUserId(String userId) {

		return tUserService.selectByPrimaryKey(userId) == null;

	}

}
