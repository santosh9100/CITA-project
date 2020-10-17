package email;
import java.util.*; 
import javax.mail.*; 
import javax.mail.PasswordAuthentication;
import javax.mail.internet.*;
public class send_email {
	public static void main(String[] args) {
		final String username = "santoshkarki930@gmail.com";
		final String password = "$@NTO$h012171447";
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(username, password);
			}
		  });
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("fromemail@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
			InternetAddress.parse("pradeep.sapkota.1985@gmail.com"));
			message.setSubject("Testing Subject");
			message.setText("Dear Mr pradeep ,"
				+ "\n\n k xa,,,,chak kha!");
			Transport.send(message);
			System.out.println("Done");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
}