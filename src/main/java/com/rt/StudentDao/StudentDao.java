package com.rt.StudentDao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rt.entity.Student;

@Repository
public class StudentDao {

    @Autowired
    private JdbcTemplate template;

    public void save(Student s) {

        String sql =
        "insert into Student values(?,?,?,?)";

        template.update(sql,
                s.getId(),
                s.getName(),
                s.getCity(),
                s.getCourse());
    }
    public void update(Student s) {

        String sql =
        "update student set name=?, city=?, course=? where id=?";

        template.update(sql,

                s.getName(),
                s.getCity(),
                s.getCourse(),
                s.getId());
    }
    public void delete(int id) {

        String sql =
        "delete from Student where id=?";

        template.update(sql, id);
    }
    public Student view(int id) {

        String sql =
        "select * from Student where id=?";

        return template.queryForObject(
                sql,
                new BeanPropertyRowMapper<Student>(Student.class),
                id);
    }
    public List<Student> viewAll() {

        String sql =
        "select * from Student";

        return template.query(
                sql,
                new BeanPropertyRowMapper<Student>(Student.class));
    }
}