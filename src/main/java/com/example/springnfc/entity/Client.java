package com.example.springnfc.entity;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;


@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
public class Client implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String adress;
    private String city;
    private String zipcode;
    private String phone;
    private String email;
    @Lob
    private String description;

    private Date createdAt = new Date();
    private Date updatedAt;

    private String logo;

    @OneToMany(mappedBy="client", cascade = CascadeType.PERSIST)
    private Collection<Installation> installations;

    @OneToOne(mappedBy="client")
    private Utilisateur utilisateur;

    @OneToOne
    private Utilisateur userOrderer;
}
