package com.example.springnfc.form;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ClientForm {
    private String name;
    private String adress;
    private String city;
    private String zipcode;
    private String phone;
    private String email;
    private String description;
    private String logo;
}
