package com.example.springnfc.projection;

import com.example.springnfc.entity.InterventionProvider;
import com.example.springnfc.entity.InterventionProviderTravailleur;
import com.example.springnfc.entity.Utilisateur;
import org.springframework.data.rest.core.config.Projection;

@Projection(types = {InterventionProviderTravailleur.class}, name = "interventionProviderTravailleurProjection")
public interface InterventionProviderTravailleurProjection {
    Long getId();
    Boolean getEstIntervenue();
    InterventionProvider getInterventionProvider();
    Utilisateur getTravailleur();
}
