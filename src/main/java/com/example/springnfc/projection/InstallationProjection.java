package com.example.springnfc.projection;

import com.example.springnfc.entity.*;
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
    Orderer getOrderer();
}
