package com.example.springnfc.projection;


import com.example.springnfc.entity.Client;
import com.example.springnfc.entity.Installation;
import com.example.springnfc.entity.Orderer;
import com.example.springnfc.entity.Utilisateur;
import org.springframework.data.rest.core.config.Projection;

import java.util.List;

@Projection(types = {Orderer.class}, name = "ordererProjection")
public interface OrdererProjection {
    Long getId();
    String getName();
    String getAdress();
    String getCity();
    String getZipcode();
    String getPhone();
    String getEmail();
    String getDescription();

    List<Utilisateur> getUtilisateurs();
    List<Client> getClients();
    List<Installation> getInstallations();
}

