package com.rt.controller;
import java.util.List;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.entity.Student;
import com.rt.service.StudentService;

@Controller
public class StudentController {

    @Autowired
    private StudentService service;

    // ---------------- INDEX ----------------
    @GetMapping("/")
    public String index() {
        return "index";
    }

    // ---------------- ADD FORM ----------------
    @GetMapping("/add")
    public String addPage() {
        return "add";
    }

    // ---------------- SAVE STUDENT ----------------
    @PostMapping("/saveStudent")
    public String saveStudent(Student s, Model m) {

        try {

            service.save(s);

            m.addAttribute("msg",
            "Student Added Successfully");

        }
        catch (Exception e) {

            m.addAttribute("msg",
            "Student Not Added");

        }

        return "add";
    }// ---------------- UPDATE PAGE ----------------
    @GetMapping("/edit")
    public String updatePage() {

        return "edit";
    }


    // ---------------- UPDATE STUDENT ----------------
    @PostMapping("/updateStudent")
    public String updateStudent(Student s, Model m) {

        try {

            service.update(s);

            m.addAttribute("msg",
            "Student Updated Successfully");

        }
        catch (Exception e) {

            m.addAttribute("msg",
            "Student Not Updated");

        }

        return "update";
    }
 // ---------------- DELETE PAGE ----------------
    @GetMapping("/delete")
    public String deletePage() {

        return "delete";
    }

    // ---------------- DELETE STUDENT ----------------
    @PostMapping("/deleteStudent")
    public String deleteStudent(@RequestParam int id,
            Model m) {

        try {

            service.delete(id);

            m.addAttribute("msg",
            "Student Deleted Successfully");

        }
        catch (Exception e) {

            m.addAttribute("msg",
            "Student Not Deleted");

        }

        return "delete";
    }
 // ---------------- VIEW PAGE ----------------
    @GetMapping("/view")
    public String viewPage() {

        return "view";
    }

    // ---------------- VIEW STUDENT ----------------
    @PostMapping("/viewStudent")
    public String viewStudent(@RequestParam int id,
            Model m) {

        Student s = service.view(id);

        m.addAttribute("s", s);

        return "view";
    }// ---------------- VIEW ALL ----------------
    @GetMapping("/viewall")
    public String viewAll(Model m) {

        List<Student> list =
        service.viewAll();

        m.addAttribute("list", list);

        return "viewall";
    }



    // ---------------- DELETE BY ID ----------------
    @GetMapping("/deleteById")
    public String deleteById(@RequestParam int id) {

        service.delete(id);

        return "redirect:/viewall";
    }

   
}