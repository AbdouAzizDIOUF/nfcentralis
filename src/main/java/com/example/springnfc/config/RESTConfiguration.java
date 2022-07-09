package com.example.springnfc.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.repository.config.RepositoryConfiguration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.view.BeanNameViewResolver;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Configuration
public class RESTConfiguration implements RepositoryRestConfigurer
{
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {

        //config.exposeIdsFor(Officer.class);
        //config.exposeIdsFor(Position.class);

        //TODO: Expose id for all entities!
        entityManager.getMetamodel().getEntities().forEach(entity->{
            try {
                System.out.println("Model: " + entity.getName());
                Class<? extends Object> clazz = Class.forName(String.format("yourpackage.%s", entity.getName()));
                config.exposeIdsFor(clazz);
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        });    }
}
