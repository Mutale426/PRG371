package demo.demo.service;

import java.util.List;

import demo.demo.model.Student;

public interface StudentService {
	Student saveStudent(Student student);
	List<Student> getAllStudent();
	Student getStudentById(long id);
	Student updateStudent(Student student, long id);
	void deleteStudent(long id);
}