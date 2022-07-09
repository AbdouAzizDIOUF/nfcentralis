package com.example.springnfc.projection;

import com.example.springnfc.entity.Client;
import com.example.springnfc.entity.Installation;
import com.example.springnfc.entity.Provider;
import com.example.springnfc.entity.Utilisateur;
import org.springframework.data.rest.core.config.Projection;

import java.util.Date;

@Projection(types = {Installation.class}, name = "installationProjection")
public interface InstallationProjection {

    Long getId();
    String getTitle();
    String getAdress();
    String getCity();
    String getZipcode();
    String getImage();
    Date getCreatedAt();
    String getDescription();

    Client getClient();
    Utilisateur getUtilisateur();
}
