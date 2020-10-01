package com.kgc.zjh.service.Impl;

import com.kgc.zjh.mapper.StudentInfoMapper;
import com.kgc.zjh.pojo.StudentInfo;
import com.kgc.zjh.service.StudentInfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("studentInfo")
public class StudentInfoServiceImpl implements StudentInfoService {

    @Resource
    StudentInfoMapper studentInfoMapper;

    @Override
    public List<StudentInfo> selectAll() {
        return studentInfoMapper.selectByExample(null);
    }

    @Override
    public StudentInfo selectById(Integer id) {
        return studentInfoMapper.selectByPrimaryKey(id);
    }

    @Override
    public void update(StudentInfo studentInfo) {
        studentInfoMapper.updateByPrimaryKeySelective(studentInfo);
    }
}
