package com.epass.travel.repository;

import java.util.List;

import org.hibernate.envers.Audited;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.epass.travel.model.User;

@Audited
@Repository
public interface UserRepository extends CrudRepository<User, String> {
	User findByEmailIgnoreCase(String email);
	
	@Query(value = "select * from user_info where status='Pending' and verified = 1",nativeQuery = true)
	List<User> findPendingUsers();
}
