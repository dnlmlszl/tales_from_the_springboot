package com.lmdcodes.cruddemo.dao;

import com.lmdcodes.cruddemo.entity.Employee;

import java.util.List;

public interface EmployeeDAO {

    List<Employee> findAll();
}
