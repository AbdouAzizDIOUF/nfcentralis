package com.example.springnfc.entity;


import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;


@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
@Table(
    uniqueConstraints = {
            @UniqueConstraint(columnNames = "userName"),
            @UniqueConstraint(columnNames = "email")})
public class Utilisateur implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String firstName;
    private String lastName;
    private String email;
    private String userName;
    @JsonIgnore
    private String password;
    private String mobile;

    private Date createdAt = new Date();
    private Date updatedAt;

    @ManyToOne
    @JoinColumn(nullable = true)
    private Company company;

    @OneToMany(mappedBy="utilisateur")
    private Collection<Intervention> interventions;

    @OneToMany(mappedBy="utilisateur")
    private Collection<Installation> installations;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(	name = "user_roles",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles = new HashSet<>();

    @OneToOne
    private Client client;

    @OneToMany(mappedBy="travailleur")
    private Collection<InterventionProviderTravailleur> interventionProviderTravailleurs;


    public Utilisateur(String userName,String email, String password) {
        this.email = email;
        this.userName = userName;
        this.password = password;
    }
}
