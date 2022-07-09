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
public class InterventionProviderTravailleur implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private Date createdAt=new Date();

    @OneToOne
    private InterventionProvider interventionProvider;

    @ManyToOne
    private Utilisateur travailleur;

    private Boolean estIntervenue = false;


}