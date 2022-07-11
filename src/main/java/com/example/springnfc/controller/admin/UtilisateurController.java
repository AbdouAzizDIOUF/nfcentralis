package com.example.springnfc.controller.admin;


import com.example.springnfc.entity.*;
import com.example.springnfc.form.UserForm;
import com.example.springnfc.repository.CompanyRepository;
import com.example.springnfc.repository.NfcentralisRepository;
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

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/admin")
public class UtilisateurController {

    UtilisateurRepository userRepository;
    CompanyRepository companyRepository;
    PasswordEncoder encoder;
    RoleRepository roleRepository;
    MailSenderService mailSenderService;
    private final NfcentralisRepository nfcentralisRepository;


    public UtilisateurController(MailSenderService mailSenderService, UtilisateurRepository userRepository, CompanyRepository companyRepository, PasswordEncoder encoder, RoleRepository roleRepository, NfcentralisRepository nfcentralisRepository) {
        this.userRepository = userRepository;
        this.companyRepository = companyRepository;
        this.encoder = encoder;
        this.roleRepository = roleRepository;
        this.mailSenderService = mailSenderService;
        this.nfcentralisRepository = nfcentralisRepository;
    }

    @PostMapping(path = "/creerAdmin")
   /* @PreAuthorize("hasRole('admin')")*/
    @Transactional
    public Utilisateur createAdminUser(@RequestBody UserForm user) throws MessagingException, IOException {
        Utilisateur utilisateur = new Utilisateur();
        Set<Role> roles = new HashSet<>();
        Role userRole = roleRepository.findByName(ERole.ROLE_ADMIN)
                .orElseThrow(() -> new RuntimeException("Error: Role is not found."));
        roles.add(userRole);
        Nfcentralis nfcentralis = this.nfcentralisRepository.findById(13L).get();
        utilisateur.setFirstName(user.getFirstName());
        utilisateur.setLastName(user.getLastName());
        utilisateur.setEmail(user.getEmail());
        utilisateur.setPassword(encoder.encode(user.getPassword()));
        utilisateur.setMobile(user.getMobile());
        utilisateur.setUserName(user.getUserName());
        utilisateur.setCompany(nfcentralis);
        utilisateur.setRoles(roles);
        this.mailSenderService.sendmail(user);
        return userRepository.save(utilisateur);

    }

    @PostMapping(path = "/creerProviderUser")
    /* @PreAuthorize("hasRole('admin')")*/
    @Transactional
    public Utilisateur createProviderUser(@RequestBody UserForm userForm) throws MessagingException, IOException {
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

    @PostMapping(path = "/creerOrdererUser")
    @Transactional
    public Utilisateur createNewUser(@RequestBody UserForm userForm) throws MessagingException, IOException {
        Utilisateur chef = userRepository.findById(userForm.getChefID()).get();
        Company company = chef.getCompany();

        Set<Role> roles = new HashSet<>();

        Role userRole = roleRepository.findByName(ERole.ROLE_ADJOINT_ORDERER)
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
