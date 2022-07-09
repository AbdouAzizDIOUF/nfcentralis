package com.example.springnfc.entity;


import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;

@Entity
@Data
@ToString
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="TYPE_COMPANY", discriminatorType=DiscriminatorType.STRING)
public class Company implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String adress;
    private String city;
    private String zipcode;
    private String phone;
    private String email;

    private Date createdAt = new Date();
    private Date updatedAt;

    @Lob
    private String description;

    private String logo;


    @OneToMany(mappedBy="company")
    private Collection<Utilisateur> utilisateurs;
}
