package demo.demo.service;
import demo.demo.model.Student;
import demo.demo.repository.StudentRepository;
import demo.demo.exception.ResourceNotFoundException;

import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class StudentServiceImpl implements StudentService {

    private StudentRepository studentRepository;

    public StudentServiceImpl(StudentRepository studentRepository) {
        super();
        this.studentRepository = studentRepository;
    }

    @Override
    public Student saveStudent(Student student) {
        
        return studentRepository.save(student);
    }

    @Override
    public List<Student> getAllStudent() {
        return (List<Student>) studentRepository.findAll();
    }


    @Override
    public Student getStudentById(Integer id) {
        
        return studentRepository.findById(id).orElseThrow(() -> 
						new ResourceNotFoundException("Student", "student_id", id));

    }

    @Override
    public Student updateStudent(Student student, Integer id) {
    // we need to check whether student with given id is exist in DB or not
	Student existingStudent = studentRepository.findById(id).orElseThrow(
    () -> new ResourceNotFoundException("Student", "student_id", id)); 
    
    existingStudent.setName(student.getName());
    existingStudent.setAddress(student.getAddress());
    existingStudent.setEmail(student.getEmail());

    // save existing student to DB
    studentRepository.save(existingStudent);
    return existingStudent;
    }

    @Override
    public void deleteStudent(Integer id) {
     // check whether a student exist in a DB or not
		studentRepository.findById(id).orElseThrow(() -> 
        new ResourceNotFoundException("Student", "student_id", id));
        studentRepository.deleteById(id);   
    } 
}
