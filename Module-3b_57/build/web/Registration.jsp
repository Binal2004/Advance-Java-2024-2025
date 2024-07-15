<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        //JSP Scriptlet
        String s1 = request.getParameter("uname");
        String s2 = request.getParameter("pass");
        String s3 = request.getParameter("repass");
        String s4 = request.getParameter("email");
        String s5 = request.getParameter("country");
        if(s2.equals(s3))
        {
            // Database connectivity Code
            try
            {
              Class.forName("com.mysql.jdbc.Driver");
              Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
              PreparedStatement pst= conn.prepareStatement("insert into registration_57 values(?,?,?,?)");
              pst.setString(1, s1);
              pst.setString(2, s2);
              pst.setString(3, s4);
              pst.setString(4, s5);
              int rows = pst.executeUpdate();
              if(rows == 1)
              {
                  out.println("Registration successful!");
              }
              %>
                 <jsp:include page="Registration.html"></jsp:include> 
              <%
              else
              {
                  out.println("Registration failed...");
                  out.println("Try once Again!");
              }
             
            }
            catch(Exception e)
            {
              out.println("Exception = "+e);    
            }
        }
        else
        {
            out.println("Password Mismatch...");
            out.println("Register once again!");
            %>
            <jsp:include page="Registration.html"></jsp:include> 
            <%
        }     
        %>
    </body>
</html>
