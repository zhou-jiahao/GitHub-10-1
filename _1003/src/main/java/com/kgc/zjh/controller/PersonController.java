package com.kgc.zjh.controller;

import com.kgc.zjh.pojo.Person;
import com.kgc.zjh.service.PersonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class PersonController {

    @Resource
    PersonService personService;

    @RequestMapping("/")
    public String Index(Model model){
        List<Person> people = personService.selectAll();
        model.addAttribute("list",people);
        return "Index";
    }

    @RequestMapping("/add")
    public String add(){
        return "add";
    }

    @RequestMapping("/insertPerson")
    public String insertPerson(Person person){
        personService.insert(person);
        return "redirect:/";
    }

    @RequestMapping("/deletePerson")
    @ResponseBody
    public Map<String,Object> delete(int id){
        Map<String,Object> map=new HashMap<>();
        personService.delete(id);
        map.put("data","true");
        return map;
    }
}
