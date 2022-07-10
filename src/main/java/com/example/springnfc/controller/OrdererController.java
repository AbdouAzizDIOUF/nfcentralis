package com.example.springnfc.controller;


import com.example.springnfc.entity.*;
import com.example.springnfc.form.UserForm;
import com.example.springnfc.repository.CompanyRepository;
import com.example.springnfc.repository.RoleRepository;
import com.example.springnfc.repository.UtilisateurRepository;
import com.example.springnfc.service.MailSenderService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


@CrossOrigin("*")
@RestController
@RequestMapping("/api/orderer")
public class OrdererController {

    UtilisateurRepository userRepository;
    CompanyRepository companyRepository;
    RoleRepository roleRepository;
    MailSenderService mailSenderService;


    public OrdererController(MailSenderService mailSenderService, UtilisateurRepository userRepository, CompanyRepository companyRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.companyRepository = companyRepository;
        this.roleRepository = roleRepository;
        this.mailSenderService = mailSenderService;
    }

    @PostMapping(path = "/client")
    @PreAuthorize("hasRole('CHEF')")
    @Transactional
    public List<Client> createNewUser(@RequestBody UserForm userForm) throws MessagingException, IOException {
        Utilisateur chef = userRepository.findById(userForm.getChefID()).get();
        Company company = chef.getCompany();


        //this.mailSenderService.sendMail("abdouazizdiouf75@gmail.com", "iuzeuiez zfiezufuiz", "soifieofreoifroei");
        return null;
    }
}
