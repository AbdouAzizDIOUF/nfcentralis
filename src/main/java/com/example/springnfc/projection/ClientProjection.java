package com.example.springnfc.projection;


import com.example.springnfc.entity.Client;
import com.example.springnfc.entity.Installation;
import com.example.springnfc.entity.Provider;
import com.example.springnfc.entity.Utilisateur;
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

    Utilisateur getUserOrderer();
    Utilisateur getUtilisateur();

    List<Installation> getInstallations();

}
