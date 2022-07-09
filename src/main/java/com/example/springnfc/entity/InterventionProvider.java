package com.example.springnfc.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class InterventionProvider implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Lob
    private String description;

    @ManyToOne
    private Installation installation;

    @ManyToOne
    private Provider provider;

    @OneToOne(mappedBy="interventionProvider")
    private InterventionProviderTravailleur interventionProvider;

    private Date createdAt = new Date();

    private Boolean estAttribue = false;
}