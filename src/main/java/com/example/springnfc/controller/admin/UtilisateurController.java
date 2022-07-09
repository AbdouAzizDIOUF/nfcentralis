package com.example.springnfc.controller.admin;


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

import java.util.HashSet;
import java.util.Set;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/admin")
public class UtilisateurController {

    UtilisateurRepository userRepository;
    CompanyRepository companyRepository;
    PasswordEncoder encoder;
    RoleRepository roleRepository;
    MailSenderService mailSenderService;


    public UtilisateurController(MailSenderService mailSenderService,UtilisateurRepository userRepository, CompanyRepository companyRepository, PasswordEncoder encoder, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.companyRepository = companyRepository;
        this.encoder = encoder;
        this.roleRepository = roleRepository;
        this.mailSenderService = mailSenderService;
    }

    @PostMapping(path = "/creerAdmin")
   /* @PreAuthorize("hasRole('admin')")*/
    @Transactional
    public Utilisateur createSuperAdminUser(@RequestBody UserForm user){

        System.out.println(user.toString());

        Utilisateur utilisateur = new Utilisateur();
        Set<Role> roles = new HashSet<>();
        Role userRole = roleRepository.findByName(ERole.ROLE_ADMIN)
                .orElseThrow(() -> new RuntimeException("Error: Role is not found."));
        roles.add(userRole);

        utilisateur.setFirstName(user.getFirstName());
        utilisateur.setLastName(user.getLastName());
        utilisateur.setEmail(user.getEmail());
        utilisateur.setPassword(encoder.encode(user.getPassword()));
        utilisateur.setMobile(user.getMobile());
        utilisateur.setUserName(user.getUserName());
        utilisateur.setRoles(roles);

        return userRepository.save(utilisateur);

    }
}
