package service;

import javax.annotation.Resource;

import mapper.UserMapper;

import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImp implements UserService {
	@Resource
	private UserMapper userMapper;
	
	@Override
	public int countAll() {
		int num = userMapper.countAll();
		return num;
	}

}
