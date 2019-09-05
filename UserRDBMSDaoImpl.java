package com.nucleus.dao;

import java.util.ArrayList;
import java.util.List;



import org.hibernate.Session;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nucleus.model.Role;
import com.nucleus.model.User;

@Repository
public class UserRDBMSDaoImpl implements IUserDao {

	@Autowired
	SessionFactory sessionfactory;
	@Override
	public void saveUser(User user,String role[]) {
		List<Role> list=new ArrayList<Role>();
		for(int i=0;i<role.length;i++)
		{
			if(role[i].equals("ROLE_USER"))
			{
				if(retrieveRoleId(role[i])!=null)
				{
					saveUser1(user,retrieveRoleId(role[i]));
				}
				else {
					Role role1=new Role();
					role1.setRolename(role[i]);
					role1.setRoleid("2");
					list.add(role1);
					saveUser2(user);
				}
				if(role[i].equals("ROLE_ADMIN"))
				{
					if(retrieveRoleId(role[i])!=null)
					{
						saveUser1(user,retrieveRoleId(role[i]));
					}
					else {
						Role role2=new Role();
						role2.setRolename(role[i]);
						role2.setRoleid("1");
						list.add(role2);
						saveUser2(user);
					}
				}
			}
		}
		
		
	}

	public boolean saveUser1(User user,String roleid)
	{
		Session session=sessionfactory.getCurrentSession();
		Query q=session.createSQLQuery("insert into user1010 values(?,?,?)");
		q.setParameter(0, user.getUserid());
		q.setParameter(1, user.getCheckEnable());
		q.setParameter(2, user.getPassword());
		
		q.executeUpdate();
		Query q1=session.createSQLQuery("insert into user10_role10 values(?,?)");
		q1.setParameter(0, user.getUserid());
		q1.setParameter(1, roleid);
		q1.executeUpdate();
		return true;
	}
	public boolean saveUser2(User user)
	{
		Session session=sessionfactory.getCurrentSession();
		session.persist(user);
		return true;
	}
	@Override
	public String retrieveRoleId(String rolename) {
		Query q=(Query)sessionfactory.getCurrentSession().createQuery("select roleid from Role where rolename=?");
		q.setParameter(0, rolename);
		List<String> list=q.list();
		return list.get(0);
			}
	
	

	@Override
	public void addrole(Role role) {
		Session session=sessionfactory.getCurrentSession();
		session .persist(role);
	}

}
