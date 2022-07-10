package com.example.springnfc.projection;


import com.example.springnfc.entity.*;
import org.springframework.data.rest.core.config.Projection;

import java.util.List;

@Projection(types = {Client.class}, name = "clientProjection")
public interface ClientProjection {

    Long getId();
    String getName();
    String getAdress();
    String getCity();
    String getZipcode();
    String getPhone();
    String getEmail();
    String getDescription();
    String getLogo();

    Utilisateur getUserOrderer();
    Utilisateur getUtilisateur();

    List<Installation> getInstallations();
    List<Orderer> getOrderer();

}
