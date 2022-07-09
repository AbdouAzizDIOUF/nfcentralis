package com.example.springnfc.repository;

import com.example.springnfc.entity.Client;
import com.example.springnfc.projection.ClientProjection;
import com.example.springnfc.projection.InstallationProjection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.stereotype.Repository;

import javax.persistence.Entity;

@RepositoryRestResource(excerptProjection = ClientProjection.class)
@Repository
public interface ClientRepository extends JpaRepository<Client, Long> {

}