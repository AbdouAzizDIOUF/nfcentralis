package com.example.springnfc.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;


@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
public class Intervention implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private Date createdAt = new Date();
    private Date updatedAt;
    @Lob
    private String detail;

    @ManyToOne
    private Utilisateur utilisateur;

    @ManyToOne
    private Installation installation;

    @OneToMany(mappedBy="intervention")
    private Collection<Etape> etapes;
}
