package com.lmdcodes.cruddemo.dao;

import com.lmdcodes.cruddemo.entity.Student;

public interface StudentDAO {

    void save(Student theStudent);

    Student findById(Integer id);

}
