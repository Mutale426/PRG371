package demo.demo.repository;

import org.springframework.data.repository.CrudRepository;

import demo.demo.model.Register;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

public interface RegisterRepository extends CrudRepository<Register, Integer> {

}
