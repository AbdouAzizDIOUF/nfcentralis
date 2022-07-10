package com.example.springnfc.service;

import com.example.springnfc.entity.*;
import com.example.springnfc.repository.*;
import com.github.javafaker.Faker;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
@Transactional
public class NFCentralisImpl implements IInitNFCentralis
{

    private final OrdererRepository ordererRepository;
    private final ProviderRepository providerRepository;
    private final UtilisateurRepository utilisateurRepository;
    private final ClientRepository clientRepository;
    private PasswordEncoder encoder;
    private final RoleRepository roleRepository;
    private final InstallationRepository installationRepository;
    private final NfcentralisRepository nfcentralisRepository;

    public NFCentralisImpl(NfcentralisRepository nfcentralisRepository,OrdererRepository ordererRepository, ProviderRepository providerRepository, UtilisateurRepository utilisateurRepository, ClientRepository clientRepository, PasswordEncoder encoder, RoleRepository roleRepository, InstallationRepository installationRepository) {
        this.ordererRepository = ordererRepository;
        this.providerRepository = providerRepository;
        this.utilisateurRepository = utilisateurRepository;
        this.clientRepository = clientRepository;
        this.encoder = encoder;
        this.roleRepository = roleRepository;
        this.installationRepository = installationRepository;
        this.nfcentralisRepository = nfcentralisRepository;
    }


    @Override
    public void initOrderer() {
        for (int i=0; i<5; i++){
            Faker faker = new Faker(new Locale("fr-FR"));
            Orderer orderer = new Orderer();
            orderer.setName(faker.company().name());
            orderer.setAdress(faker.address().streetName());
            orderer.setCity(faker.address().city());
            orderer.setZipcode(faker.address().buildingNumber());
            orderer.setPhone(faker.phoneNumber().phoneNumber());
            orderer.setEmail(faker.internet().emailAddress());
            orderer.setDescription(faker.lorem().fixedString(100));
            orderer.setLogo(faker.company().logo());
            ordererRepository.save(orderer);
        }
    }

    @Override
    public void initProvider() {
        for (int i=0; i<5; i++){
            Faker faker = new Faker(new Locale("fr-FR"));
            Provider provider = new Provider();
            provider.setName(faker.company().name());
            provider.setAdress(faker.address().streetName());
            provider.setCity(faker.address().city());
            provider.setZipcode(faker.address().buildingNumber());
            provider.setPhone(faker.phoneNumber().phoneNumber());
            provider.setEmail(faker.internet().emailAddress());
            provider.setDescription(faker.lorem().fixedString(100));
            provider.setLogo(faker.company().logo());
            providerRepository.save(provider);
        }
    }

    @Override
    public void initNfcentralis(){
        Faker faker = new Faker(new Locale("fr-FR"));
        Nfcentralis provider = new Nfcentralis();
        provider.setName(faker.company().name());
        provider.setAdress(faker.address().streetName());
        provider.setCity(faker.address().city());
        provider.setZipcode(faker.address().buildingNumber());
        provider.setPhone(faker.phoneNumber().phoneNumber());
        provider.setEmail(faker.internet().emailAddress());
        provider.setDescription(faker.lorem().fixedString(100));
        provider.setLogo(faker.company().logo());
        nfcentralisRepository.save(provider);
    }

    @Override
    public void initRole() {
        List<ERole> roles = new ArrayList<>();
        roles.add(ERole.ROLE_CLIENT);
        roles.add(ERole.ROLE_ADMIN);
        roles.add(ERole.ROLE_TRAVAILLEUR);
        roles.add(ERole.ROLE_CHEF_PROVIDER);
        roles.add(ERole.ROLE_ADJOINT_PROVIDER);
        roles.add(ERole.ROLE_CHEF_ORDERER);
        roles.add(ERole.ROLE_ADJOINT_ORDERER);

        roles.forEach(e->{
            roleRepository.save(new Role(e));
        });
    }

    @Override
    public void initUtilisateurOrderers() {
        Set<Role> roles = new HashSet<>();

        Role userRole = roleRepository.findByName(ERole.ROLE_ADJOINT_ORDERER)
                .orElseThrow(() -> new RuntimeException("Error: Role is not found."));
        roles.add(userRole);

        ordererRepository.findAll().forEach(orderer -> {

                Faker faker = new Faker(new Locale("fr-FR"));
                Utilisateur utilisateur = new Utilisateur();
                utilisateur.setFirstName(faker.name().firstName());
                utilisateur.setLastName(faker.name().lastName());
                utilisateur.setEmail(faker.internet().emailAddress());
                utilisateur.setPassword(encoder.encode("passer2022"));
                utilisateur.setMobile(faker.phoneNumber().phoneNumber());
                utilisateur.setUserName(faker.name().username());
                utilisateur.setRoles(roles);
                utilisateur.setCompany(orderer);
                utilisateurRepository.save(utilisateur);

        });
    }

    @Override
    public void initUtilisateurProviders() {
        Set<Role> roles = new HashSet<>();

        /*Role adminRole = roleRepository.findByName(ERole.RO)
        roles.add(adminRole);*/

        Role userRole = roleRepository.findByName(ERole.ROLE_TRAVAILLEUR)
                .orElseThrow(() -> new RuntimeException("Error: Role is not found."));
        roles.add(userRole);
        providerRepository.findAll().forEach(provider -> {
            for (int i=0; i<5; i++){
                Faker faker = new Faker(new Locale("fr-FR"));
                Utilisateur utilisateur = new Utilisateur();
                utilisateur.setFirstName(faker.name().firstName());
                utilisateur.setLastName(faker.name().lastName());
                utilisateur.setEmail(faker.internet().emailAddress());
                utilisateur.setMobile(faker.phoneNumber().phoneNumber());
                utilisateur.setUserName(faker.name().username());
                utilisateur.setPassword(encoder.encode("passer2022"));
                utilisateur.setRoles(roles);
                utilisateur.setCompany(provider);
                utilisateurRepository.save(utilisateur);
            }
        });
    }

    @Override
    public void initChefOrderers() {
        ordererRepository.findAll().forEach(orderer -> {

            Set<Role> roles = new HashSet<>();

            Role userRole = roleRepository.findByName(ERole.ROLE_CHEF_ORDERER)
                    .orElseThrow(() -> new RuntimeException("Error: Role is not found."));
            roles.add(userRole);

            Faker faker = new Faker(new Locale("fr-FR"));
            Utilisateur utilisateur = new Utilisateur();
            utilisateur.setFirstName(faker.name().firstName());
            utilisateur.setLastName(faker.name().lastName());
            utilisateur.setEmail(faker.internet().emailAddress());
            utilisateur.setPassword(encoder.encode("passer2022"));
            utilisateur.setMobile(faker.phoneNumber().phoneNumber());
            utilisateur.setUserName(faker.name().username());
            utilisateur.setCompany(orderer);
            utilisateur.setRoles(roles);
            utilisateurRepository.save(utilisateur);

        });
    }

    @Override
    public void initChefProviders() {
        providerRepository.findAll().forEach(provider -> {
            Set<Role> roles = new HashSet<>();

            Role userRole = roleRepository.findByName(ERole.ROLE_CHEF_PROVIDER)
                    .orElseThrow(() -> new RuntimeException("Error: Role is not found."));
            roles.add(userRole);

            Faker faker = new Faker(new Locale("fr-FR"));
            Utilisateur utilisateur = new Utilisateur();
            utilisateur.setFirstName(faker.name().firstName());
            utilisateur.setLastName(faker.name().lastName());
            utilisateur.setEmail(faker.internet().emailAddress());
            utilisateur.setMobile(faker.phoneNumber().phoneNumber());
            utilisateur.setUserName(faker.name().username());
            utilisateur.setPassword(encoder.encode("passer2022"));
            utilisateur.setCompany(provider);
            utilisateur.setRoles(roles);
            utilisateurRepository.save(utilisateur);

        });
    }

    @Override
    public void initAdmin() {
        nfcentralisRepository.findAll().forEach(provider -> {
            Set<Role> roles = new HashSet<>();

            Role userRole = roleRepository.findByName(ERole.ROLE_ADMIN)
                    .orElseThrow(() -> new RuntimeException("Error: Role is not found."));
            roles.add(userRole);

            Faker faker = new Faker(new Locale("fr-FR"));
            Utilisateur utilisateur = new Utilisateur();
            utilisateur.setFirstName(faker.name().firstName());
            utilisateur.setLastName(faker.name().lastName());
            utilisateur.setEmail(faker.internet().emailAddress());
            utilisateur.setMobile(faker.phoneNumber().phoneNumber());
            utilisateur.setUserName(faker.name().username());
            utilisateur.setPassword(encoder.encode("passer2022"));
            utilisateur.setCompany(provider);
            utilisateur.setRoles(roles);
            utilisateurRepository.save(utilisateur);

        });
    }

    @Override
    public void initClient() {
        for (int i=0; i<=2; i++){
            Faker faker = new Faker(new Locale("fr-FR"));
            Client client = new Client();
            System.out.printf(faker.company().logo());
            client.setName(faker.company().name());
            client.setAdress(faker.address().streetName());
            client.setCity(faker.address().city());
            client.setZipcode(faker.address().buildingNumber());
            client.setPhone(faker.phoneNumber().phoneNumber());
            client.setEmail(faker.internet().emailAddress());
            client.setDescription(faker.chuckNorris().fact());
            client.setLogo(faker.company().logo());

            Utilisateur userOrderer = utilisateurRepository.findById(1L).get();
            client.setUserOrderer(userOrderer);

            clientRepository.save(client);
            Set<Role> roles = new HashSet<>();

            Role userRole = roleRepository.findByName(ERole.ROLE_CLIENT)
                    .orElseThrow(() -> new RuntimeException("Error: Role is not found."));
            roles.add(userRole);

            Utilisateur utilisateur = new Utilisateur();
            utilisateur.setFirstName(faker.name().firstName());
            utilisateur.setLastName(faker.name().lastName());
            utilisateur.setEmail(faker.internet().emailAddress());
            utilisateur.setMobile(faker.phoneNumber().phoneNumber());
            utilisateur.setUserName(faker.name().username());
            utilisateur.setPassword(encoder.encode("passer2022"));
            utilisateur.setClient(client);
            utilisateur.setRoles(roles);
            utilisateurRepository.save(utilisateur);
        }
    }

    public void initInstallation(){
        int i =1;
        clientRepository.findAll().forEach(client->{
            Installation installation = new Installation();
            Faker faker = new Faker(new Locale("fr-FR"));
            installation.setTitle("Installation#"+1+ (int)(Math.random() * 7));
            installation.setAdress(faker.address().streetName());
            installation.setZipcode(faker.address().buildingNumber());
            installation.setImage(faker.company().logo());
            installation.setDescription(faker.chuckNorris().fact());
            installation.setClient(client);
            installationRepository.save(installation);
            //int i +=1;
        });
    }
}
