package demo.demo.model;

import javax.persistence.*;

@Entity // This tells Hibernate to make a table out of this class
@Table(name = "Register")
public class Register {
  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private Integer register_id;
  private String student_name;
  private String student_address;
  private String student_email;
  private String student_password;
  private String course_name;


  public Integer getId() {
    return register_id;
  } public void setId(Integer id) {
    this.register_id = id;
  }

  public String getName() {
    return student_name;
  } public void setName(String name) {
    this.student_name = name;
  }

  public String getAddress() {
    return student_address;
  } public void setAddress(String address) {
    this.student_address = address;
  }

  public String getEmail() {
    return student_email;
  } public void setEmail(String email) {
    this.student_email = email;
  }

  public String getPassword() {
    return student_password;
  } public void setPassword(String password) {
    this.student_password = password;
  }

  public String getCourse() {
    return course_name;
  } public void setCourse(String coursename) {
    this.course_name = coursename;
  }
}
