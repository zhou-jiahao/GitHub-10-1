package com.kgc.zjh.controller;

import com.kgc.zjh.pojo.StudentInfo;
import com.kgc.zjh.service.StudentInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class StudentInfoController {

    @Resource
    StudentInfoService studentInfoService;

    @RequestMapping("/")
    public String Index(Model model){
        List<StudentInfo> studentInfos = studentInfoService.selectAll();
        model.addAttribute("studentInfo",studentInfos);
        return "Index";
    }

    @RequestMapping("updCha")
    public String updCha(int id,Model model){
        StudentInfo studentInfo = studentInfoService.selectById(id);
        model.addAttribute("s",studentInfo);
        return "upd";
    }

    @RequestMapping("/updateStudentInfo")
    public String update(StudentInfo studentInfo, HttpSession session){
        studentInfoService.update(studentInfo);
        session.setAttribute("flag",1);
        return "redirect:/";
    }
}
