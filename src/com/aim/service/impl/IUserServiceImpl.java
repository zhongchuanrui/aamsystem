package com.aim.service.impl;

import com.aim.dao.IUserDao;
import com.aim.pojo.User;
import com.aim.service.IUserService;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("service")
public class IUserServiceImpl implements IUserService {

	@Resource
	private IUserDao dao;

	public List<User> listAll() {
		return this.dao.listAll();
	}
}