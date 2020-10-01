package com.kgc.zjh.controller;

import com.kgc.zjh.pojo.Meeting;
import com.kgc.zjh.service.MeetingService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class MeetingController {

    @Resource
    MeetingService meetingService;

    @RequestMapping("/")
    public String Index(Model model){
        List<Meeting> meetings = meetingService.selectAll();
        model.addAttribute("list",meetings);
        return "Index";
    }

    @RequestMapping("/insertMeeting")
    public String add(){
        return "add";
    }

    @RequestMapping("addMeeting")
    public String addMeeting(Meeting meeting){
        meetingService.add(meeting);
        return "redirect:/";
    }

}
