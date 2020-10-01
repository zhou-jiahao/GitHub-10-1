package com.kgc.zjh.service.Impl;

import com.kgc.zjh.mapper.PersonMapper;
import com.kgc.zjh.pojo.Person;
import com.kgc.zjh.service.PersonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("personservice")
public class PersonServiceImpl implements PersonService{

    @Resource
    PersonMapper personMapper;

    @Override
    public List<Person> selectAll() {
        return personMapper.selectByExample(null);
    }

    @Override
    public void insert(Person person) {
        personMapper.insert(person);
    }

    @Override
    public void delete(int id) {
        personMapper.deleteByPrimaryKey(id);
    }
}
