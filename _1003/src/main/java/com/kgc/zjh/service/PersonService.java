package com.kgc.zjh.service;

import com.kgc.zjh.pojo.Person;

import java.util.List;

public interface PersonService {

    public List<Person> selectAll();

    void insert(Person person);

    void delete(int id);

}
