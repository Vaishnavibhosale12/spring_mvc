package com.rt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.StudentDao.StudentDao;
import com.rt.entity.Student;

@Service
public class StudentService {

    @Autowired
    private StudentDao dao;

    public void save(Student s) {

        dao.save(s);
    }
    public void update(Student s) {

        dao.update(s);
    }
    public void delete(int id) {

        dao.delete(id);
    }
    public Student view(int id) {

        return dao.view(id);
    }
    public List<Student> viewAll() {

        return dao.viewAll();
    }
}