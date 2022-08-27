package demo.demo.model;

import javax.persistence.*;

@Entity // This tells Hibernate to make a table out of this class
@Table(name = "Administrator")
public class Administrator {
  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private Integer admin_id;
  private String admin_name;
  private String password;
  private String contact;

  public Integer getId() {
    return admin_id;
  } public void setId(Integer id) {
    this.admin_id = id;
  }

  public String getName() {
    return admin_name;
  } public void setName(String name) {
    this.admin_name = name;
  }

  public String getPassword() {
    return password;
  } public void setPassword(String adminpassword) {
    this.password = adminpassword;
  }

  public String getContact() {
    return contact;
  } public void setContact(String admincontact) {
    this.contact = admincontact;
  }
}
