package com.example.springnfc.service;


import com.example.springnfc.entity.Utilisateur;
import com.example.springnfc.form.UserForm;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.mail.*;
import javax.mail.internet.*;
import java.io.IOException;
import java.util.Date;
import java.util.Properties;

@Service
@Transactional
public class MailSenderService {


    private JavaMailSender javaMailSender;

    @Value("${gmail.username}")
    private String username;
    @Value("${gmail.password}")
    private String password;


    public MailSenderService(JavaMailSender javaMailSender){
        this.javaMailSender = javaMailSender;
    }



    /**
     *
     *
     * @throws AddressException
     * @throws MessagingException
     * @throws IOException
     */
    public void sendmail(UserForm user) throws AddressException, MessagingException, IOException {
        Session session = this.getServerSmtp();
        Message msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress("noReply@immo.fr", false));
        msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(user.getEmail()));
        msg.setSubject("Reponse ");

        String content =
                "Bonjour  "
                +user.getLastName() +" "+user.getFirstName()

                +", \nNous vennons de vous creer un compte Travailleur dans notre application NFCentris"
                +"\n Voici vos identifiants: username:"+user.getUserName() +"    password: "+user.getPassword();

        msg.setContent(content, "text/html");
        msg.setSentDate(new Date());

        MimeBodyPart messageBodyPart = new MimeBodyPart();
        messageBodyPart.setContent(content, "text/html");

        Multipart multipart = new MimeMultipart();
        multipart.addBodyPart(messageBodyPart);
        MimeBodyPart attachPart = new MimeBodyPart();

        //attachPart.attachFile("E:\\Projets\\projet web avance\\angular\\angularTest\\src\\assets\\images\\logo.png");
        //attachPart.attachFile("/var/tmp/logo.png");

       // multipart.addBodyPart(attachPart);
        msg.setContent(multipart);
        // sends the e-mail
        Transport.send(msg);

    }



    public void sendMail(String toEmail, String subject, String message) {

        var mailMessage = new SimpleMailMessage();

        mailMessage.setTo(toEmail);
        mailMessage.setSubject(subject);
        mailMessage.setText(message);

        mailMessage.setFrom("alex.boudri@gmail.com");

        javaMailSender.send(mailMessage);
    }

    /**
     *
     * @return
     */
    private Session getServerSmtp(){
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, "wrkanrknmqrhtsrf");
                    }
                });

        return session;
    }

    public void sendmail() throws AddressException, MessagingException, IOException {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "false");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("abdouazizdiouf75@gmail", "Orangetigo1900@#$;$");
            }
        });
        Message msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress("alex.boudri@gmail.com", false));

        msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse("alex.boudri@gmail.com"));
        msg.setSubject("Tutorials point email");
        msg.setContent("Tutorials point email", "text/html");
        msg.setSentDate(new Date());

        MimeBodyPart messageBodyPart = new MimeBodyPart();
        messageBodyPart.setContent("Tutorials point email", "text/html");

        Transport.send(msg);
    }

}
