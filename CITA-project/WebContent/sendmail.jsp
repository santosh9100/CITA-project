<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>
<%@page import="email.send_email"%>


<%


    String result;

    final String to = request.getParameter("mail");

    final String subject = request.getParameter("sub");

    final String messg = request.getParameter("mess");

 


    final String from = "santoshkarki930@gmail.com";

    final String pass = "$@NTO$h012171447";

 


    String host = "smtp.gmail.com";

 
    Properties props = new Properties();

 
    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "443");

 


    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {


        MimeMessage message = new MimeMessage(mailSession);


        message.setFrom(new InternetAddress(from));


        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));


        message.setSubject(subject);


        message.setText(messg);


        Transport.send(message);

        result = "Your mail sent successfully....";

    } catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: unable to send mail....";

    }

%>

