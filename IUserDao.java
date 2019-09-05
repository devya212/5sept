package com.nucleus.dao;

import com.nucleus.model.Role;
import com.nucleus.model.User;

public interface IUserDao {

	public void saveUser(User user,String role[]);
	public String retrieveRoleId(String rolename);
	public void addrole(Role role);
}
