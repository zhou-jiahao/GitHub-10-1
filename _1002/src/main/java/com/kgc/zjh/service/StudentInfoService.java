package com.kgc.zjh.service;

import com.kgc.zjh.pojo.StudentInfo;

import java.util.List;

public interface StudentInfoService {

    public List<StudentInfo> selectAll();

    public StudentInfo selectById(Integer id);

    void update(StudentInfo studentInfo);

}
