package com.example.springnfc.projection;

import com.example.springnfc.entity.Installation;
import com.example.springnfc.entity.InterventionProvider;
import com.example.springnfc.entity.InterventionProviderTravailleur;
import com.example.springnfc.entity.Provider;
import org.springframework.data.rest.core.config.Projection;

@Projection(types = {InterventionProvider.class}, name = "interventionProviderProjection")
public interface InterventionProviderProjection {
    Integer getId();
    String getDescription();
    Boolean getEstAttribue();
    Installation getInstallation();
    Provider getProvider();
    InterventionProviderTravailleur getInterventionProvider();
}
