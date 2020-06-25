package com.test.h2angular.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.test.h2angular.model.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Long> {
	List<Customer> findByAge(int age);
}
