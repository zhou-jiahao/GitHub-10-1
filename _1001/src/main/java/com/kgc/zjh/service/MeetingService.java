package com.kgc.zjh.service;

import com.kgc.zjh.pojo.Meeting;

import java.util.List;

public interface MeetingService {

    public List<Meeting> selectAll();

    void add(Meeting meeting);

}
