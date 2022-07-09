package com.example.springnfc.form;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor @AllArgsConstructor
public class UserForm {
    private String firstName;
    private String lastName;
    private String userName;
    private String mobile;
    private String email;
    private String password;
    private Long chefID;
}
