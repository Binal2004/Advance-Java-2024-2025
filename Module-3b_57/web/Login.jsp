

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
        try
        {
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
           PreparedStatement pst= conn.prepareStatement("select * from registration_57 where username=?");
           pst.setString(1, s1);
           ResultSet rs = pst.executeQuery();
           if(rs.next())
           {
             if(rs.getString(2).equals(s2))
             {
                 out.println("Log in Successful!");
             }
             else
             {
                 // wrong password
                 //include login page
                 out.println("Password incorrect!");
                %>
                    <jsp:include page="Login.html"></jsp:include> 
                <%
             }
           }
           else
           {
             out.println("Username doesn't exist.");
                %>
                    <jsp:include page="Login.html"></jsp:include> 
                <%
            }
        }
        catch(Exception e)
                {
                    out.println("Exception = "+ e);
                }
        %>
    </body>
</html>
