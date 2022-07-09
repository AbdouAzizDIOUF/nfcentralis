package com.example.springnfc.entity;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import java.util.Collection;

@Entity
@DiscriminatorValue("Provider")
public class Provider extends Company{

    @OneToMany(mappedBy="provider")
    Collection<InterventionProvider> interventionProviders;
}
