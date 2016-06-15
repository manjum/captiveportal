/**
 * 
 */
package com.talentica.sdn.persistence.repositories;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.talentica.sdn.persistence.entities.User;

/**
 * @author NarenderK
 *
 */
@Repository
@Transactional
public interface UserRepository extends JpaRepository<User, Long>{
	
	@Query("select u from User u")
	public List<User> findUserDetails();
	
	@Query("select u.macAddress from User u")
	public List<String> findRegisteredMacs();
	
	public User findByMacAddress(String macAddress);
	
}