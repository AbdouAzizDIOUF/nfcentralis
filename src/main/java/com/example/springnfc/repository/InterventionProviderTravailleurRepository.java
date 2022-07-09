package com.example.springnfc.repository;

import com.example.springnfc.entity.InterventionProvider;
import com.example.springnfc.entity.InterventionProviderTravailleur;
import com.example.springnfc.entity.Provider;
import com.example.springnfc.entity.Utilisateur;
import com.example.springnfc.projection.InterventionProviderTravailleurProjection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.stereotype.Repository;

import java.util.List;


@RepositoryRestResource(excerptProjection = InterventionProviderTravailleurProjection.class)
@Repository
public interface InterventionProviderTravailleurRepository extends JpaRepository<InterventionProviderTravailleur, Integer> {

    List<InterventionProviderTravailleur> findByTravailleur(Utilisateur utilisateur);
}