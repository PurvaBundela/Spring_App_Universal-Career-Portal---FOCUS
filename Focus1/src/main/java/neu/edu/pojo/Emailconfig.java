package neu.edu.pojo;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;
import neu.edu.pojo.*;

public class Emailconfig {
	
	public static boolean sendCandidateMail(Emails emails){
	  final String gmailu = "purva.bundela2305@gmail.com";
	  final String gmailp = "Purva@22222222";
	  String to = emails.getTo();
	  String from = "purva.bundela2305@gmail.com";
	  Properties properties = System.getProperties();
	  properties.put("mail.smtp.auth", "true");
	  properties.put("mail.smtp.starttls.enable", "true");
	  properties.put("mail.smtp.host", "smtp.gmail.com");
	  properties.put("mail.smtp.port", "587");
	  javax.mail.Session session = javax.mail.Session.getDefaultInstance(
			  properties, new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(gmailu, gmailp);
					}
			  });
	  	try{
	      MimeMessage message = new MimeMessage(session);
	      message.setFrom(new InternetAddress(from));
	      message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
	      message.setSubject(emails.getSubject());
	      message.setContent("<p>"+emails.getBody()+"</p>", "text/html");
	      Transport.send(message);
	      return true;
	  	}catch (MessagingException ex) {
		  System.out.println("Error Sending Email.");
	      ex.printStackTrace();
	      return false;
	  	}
}
}

