package com.example.springnfc.entity;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("Orderer")
public class Orderer extends Company{
}
