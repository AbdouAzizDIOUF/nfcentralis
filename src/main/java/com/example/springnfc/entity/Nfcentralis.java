package com.example.springnfc.entity;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("nfcentralis")
public class Nfcentralis extends Company{
}
