package com.example.springnfc.entity;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import java.util.Collection;

@Entity
@DiscriminatorValue("Orderer")
public class Orderer extends Company{

    @OneToMany(mappedBy="orderer")
    Collection<Client> clients;

    @OneToMany(mappedBy="orderer")
    Collection<Installation> installations;

}
