package bureauActivation;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class SendEmail {
	
	String to = "suivalli@gmail.com";
	String from = "no-reply@oigusportaal.eu";
	String host = "smtp.gmail.com";
	String username = "suivalli";
	String password = "civic173MBP";
	// Õigusportaali koduleht
	String homepage = "http://ec2-54-226-188-89.compute-1.amazonaws.com:8080/oigusportaal/";
	Properties properties = new Properties();
	String hash;

	
	public SendEmail(){				
				
	}
	
	public SendEmail(String to){
		this.to = to;			
	}
	
	public SendEmail(String to, String hash){
		this.to = to;	
		this.hash = hash;
	}
	
	public void sendMail(){
		properties.put("mail.smtps.auth", "true");		
		Session session = Session.getDefaultInstance(properties);
		
		try{
			MimeMessage message = new MimeMessage(session);
			message.setFrom (new InternetAddress(from));
			message.addRecipient (Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject("Te olete edukalt registreerinud Õigusportaali kasutajaks.");
			message.setText("Teie aktiveermislink on " + homepage + "ActivationServlet?" + "mail_address=" + to + "&hash=" + hash);
			Transport t = session.getTransport("smtps");
			try{
			t.connect(host, username, password);
			t.sendMessage(message, message.getAllRecipients());
			}
			finally {
				t.close();
			}
			System.out.println("Message sent");
		}
		catch (MessagingException mex) {
			mex.printStackTrace();
		}
		
	}
}
