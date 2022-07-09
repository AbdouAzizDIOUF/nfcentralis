package com.example.springnfc.payload.response;

import com.example.springnfc.entity.Company;
import lombok.Data;
import lombok.ToString;

import java.util.List;

@Data
@ToString
public class JwtResponse {
  private String token;
  private String type = "Bearer";
  private Long id;
  private String username;
  private String email;
  private String firstName;
  private String lastName;
  private String mobile;
  private Company company;

  private List<String> roles;

  public JwtResponse(String accessToken, Long id, String username, String email, List<String> roles,
                     String firstName, String lastName, String mobile, Company company) {
    this.token = accessToken;
    this.id = id;
    this.username = username;
    this.email = email;
    this.roles = roles;
    this.firstName = firstName;
    this.lastName= lastName;
    this.mobile = mobile;
    this.company = company;
  }

  public String getAccessToken() {
    return token;
  }

  public void setAccessToken(String accessToken) {
    this.token = accessToken;
  }

  public String getTokenType() {
    return type;
  }

  public void setTokenType(String tokenType) {
    this.type = tokenType;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public String getMobile() {
    return mobile;
  }

  public void setMobile(String mobile) {
    this.mobile = mobile;
  }

  public List<String> getRoles() {
    return roles;
  }
}
