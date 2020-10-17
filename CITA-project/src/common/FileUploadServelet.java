

package common; 


	import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/FileUploadServelet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 3000 * 3000 * 1000)

public class FileUploadServelet extends HttpServlet {
   

    public static final String UPLOAD_DIR = "image";
    public String dbFileName = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String event= request.getParameter("event");
        String location= request.getParameter("location");
        String time = request.getParameter("time");
        String c_name = request.getParameter("c_name");
        String c_location = request.getParameter("c_location");
        String c_email = request.getParameter("c_email");
        String h_name = request.getParameter("h_name");
        String h_location = request.getParameter("h_location");
        String h_email = request.getParameter("h_email");
        String s_name = request.getParameter("s_name");
        String s_email = request.getParameter("s_email");
        
        

        Part part = request.getPart("file");//
        String fileName = extractFileName(part);
        String savePath = "/Users/santos_karki/eclipse-workspace/CITA-project/WebContent/image" + File.separator + fileName;
        File fileSaveDir = new File(savePath);

        
        part.write(savePath + File.separator);
        
    
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project?serverTimezone=UTC", "root", "");
            PreparedStatement pst = con.prepareStatement("insert into event values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
            pst.setString(1, event);
            pst.setString(2, location);
            pst.setString(3, time);
            pst.setString(4, fileName);
            pst.setString(5, savePath);
            pst.setString(6, c_name);
            pst.setString(7, c_location);
            pst.setString(8, c_email);
            pst.setString(9, h_name);
            pst.setString(10, h_location);
            pst.setString(11, h_email);
            pst.setString(12, s_name);
            pst.setString(13, s_email);
           
            pst.executeUpdate();
            out.println("<center><h1>Image inserted Succesfully......</h1></center>");
            out.println("<center><a href='event.jsp?event=" + event + "'>Display</a></center>");
        } catch (Exception e) {
            out.println(e);
        }

    }
   

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}