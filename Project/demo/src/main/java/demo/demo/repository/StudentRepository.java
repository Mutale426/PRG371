package demo.demo.repository;

import org.springframework.data.repository.CrudRepository;

import demo.demo.model.Student;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

public interface StudentRepository extends CrudRepository<Student, Integer> {

}