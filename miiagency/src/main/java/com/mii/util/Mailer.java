package com.mii.util;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class Mailer {
    public static void send(final String from,final String password,String to,String sub,String msg){  
        //Get properties object    
        Properties props = new Properties();    
        props.put("mail.smtp.host", "smtp.gmail.com");    
        props.put("mail.smtp.socketFactory.port", "465");    
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); 
        //props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true");    
        props.put("mail.smtp.port", "465");    
        
        //get Session   
        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() 
        {    
         protected PasswordAuthentication getPasswordAuthentication() 
         {    
      	   return new PasswordAuthentication(from,password);  
         }    
        });    
        //compose message    
        try 
        {    
      	  
         MimeMessage message = new MimeMessage(session);    
         message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
         message.setSubject(sub);    
         message.setText(msg);    
         //send message  
         
         // Create the message part
        /* BodyPart messageBodyPart = new MimeBodyPart();

         // Now set the actual message
         messageBodyPart.setText("This is message body");

         // Create a multipar message
         Multipart multipart = new MimeMultipart();

         // Set text message part
         multipart.addBodyPart(messageBodyPart);

         // Part two is attachment
         messageBodyPart = new MimeBodyPart();
         String filename = "/MedicalInsurance/resources/admin/dist/img/n.png";
         DataSource source = new FileDataSource(filename);
         messageBodyPart.setDataHandler(new DataHandler(source));
         messageBodyPart.setFileName(filename);
         multipart.addBodyPart(messageBodyPart);*/

         // Send the complete message parts
         //message.setContent(multipart);
         
         
         Transport.send(message);    
         System.out.println("message sent successfully");    
        }
        catch (MessagingException e) {throw new RuntimeException(e);}    
  }  
}
