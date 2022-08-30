package demo.demo.service;

import java.util.List;

import demo.demo.model.Student;

public interface StudentService {
	Student saveStudent(Student student);
	List<Student> getAllStudent();
	Student getStudentById(Integer id);
	Student updateStudent(Student student, Integer id);
	void deleteStudent(Integer id);
}