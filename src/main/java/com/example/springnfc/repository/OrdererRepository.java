package com.example.springnfc.repository;

import com.example.springnfc.entity.Orderer;
import com.example.springnfc.projection.OrdererProjection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.stereotype.Repository;

@RepositoryRestResource(excerptProjection = OrdererProjection.class)
@Repository //OrdererProjection
public interface OrdererRepository extends JpaRepository<Orderer, Long> {
}