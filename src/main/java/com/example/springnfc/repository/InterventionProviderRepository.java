package com.example.springnfc.repository;

import com.example.springnfc.entity.InterventionProvider;
import com.example.springnfc.entity.Provider;
import com.example.springnfc.projection.InstallationProjection;
import com.example.springnfc.projection.InterventionProviderProjection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@RepositoryRestResource(excerptProjection = InterventionProviderProjection.class)
@Repository
public interface InterventionProviderRepository extends JpaRepository<InterventionProvider, Integer> {

    List<InterventionProvider> findByProvider(Provider provider);
}