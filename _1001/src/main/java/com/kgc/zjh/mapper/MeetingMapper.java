package com.kgc.zjh.mapper;

import com.kgc.zjh.pojo.Meeting;
import com.kgc.zjh.pojo.MeetingExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MeetingMapper {
    int countByExample(MeetingExample example);

    int deleteByExample(MeetingExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Meeting record);

    int insertSelective(Meeting record);

    List<Meeting> selectByExample(MeetingExample example);

    Meeting selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Meeting record, @Param("example") MeetingExample example);

    int updateByExample(@Param("record") Meeting record, @Param("example") MeetingExample example);

    int updateByPrimaryKeySelective(Meeting record);

    int updateByPrimaryKey(Meeting record);
}