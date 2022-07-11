package com.example.springnfc.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
public class Etape implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Lob
    private String comment;
    private String[] data;

    private String validation;
    private String internal_validation;

    @ManyToOne
    private Intervention intervention;
    @OneToOne
    private Client client;
}
