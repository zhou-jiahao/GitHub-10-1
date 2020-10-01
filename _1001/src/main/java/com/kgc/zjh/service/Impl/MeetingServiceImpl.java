package com.kgc.zjh.service.Impl;

import com.kgc.zjh.mapper.MeetingMapper;
import com.kgc.zjh.pojo.Meeting;
import com.kgc.zjh.service.MeetingService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("meetingService")
public class MeetingServiceImpl implements MeetingService{

    @Resource
    MeetingMapper meetingMapper;

    @Override
    public List<Meeting> selectAll() {
        return meetingMapper.selectByExample(null);
    }

    @Override
    public void add(Meeting meeting) {
        meetingMapper.insert(meeting);
    }
}
