package com.example.springnfc.controller;


import com.example.springnfc.entity.Company;
import com.example.springnfc.entity.ERole;
import com.example.springnfc.entity.Role;
import com.example.springnfc.entity.Utilisateur;
import com.example.springnfc.form.UserForm;
import com.example.springnfc.repository.CompanyRepository;
import com.example.springnfc.repository.RoleRepository;
import com.example.springnfc.repository.UtilisateurRepository;
import com.example.springnfc.service.MailSenderService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;


@CrossOrigin("*")
@RestController
@RequestMapping("/api/providers")
public class ProviderController{

    UtilisateurRepository userRepository;
    CompanyRepository companyRepository;
    PasswordEncoder encoder;
    RoleRepository roleRepository;
    MailSenderService mailSenderService;


    public ProviderController(MailSenderService mailSenderService,UtilisateurRepository userRepository, CompanyRepository companyRepository, PasswordEncoder encoder, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.companyRepository = companyRepository;
        this.encoder = encoder;
        this.roleRepository = roleRepository;
        this.mailSenderService = mailSenderService;
    }

    @PostMapping(path = "/creerUser")
    @PreAuthorize("hasRole('CHEF')")
    @Transactional
    public Utilisateur createNewUser(@RequestBody UserForm userForm) throws MessagingException, IOException {
        Utilisateur chef = userRepository.findById(userForm.getChefID()).get();
        Company company = chef.getCompany();

        Set<Role> roles = new HashSet<>();

        Role userRole = roleRepository.findByName(ERole.ROLE_TRAVAILLEUR)
                .orElseThrow(() -> new RuntimeException("Error: Role is not found."));
        roles.add(userRole);
        Utilisateur utilisateur = new Utilisateur();
        utilisateur.setFirstName(userForm.getFirstName());
        utilisateur.setLastName(userForm.getLastName());
        utilisateur.setEmail(userForm.getEmail());
        utilisateur.setUserName(userForm.getUserName());
        utilisateur.setMobile(userForm.getMobile());
        utilisateur.setCompany(company);
        utilisateur.setRoles(roles);
        utilisateur.setPassword(encoder.encode(userForm.getPassword()));
        Utilisateur newUser = userRepository.save(utilisateur);
        this.mailSenderService.sendmail(userForm);
        //this.mailSenderService.sendMail("abdouazizdiouf75@gmail.com", "iuzeuiez zfiezufuiz", "soifieofreoifroei");
        return newUser;
    }
}
