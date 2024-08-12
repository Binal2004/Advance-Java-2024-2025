<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/test" user="root" password="root"/>
        <sql:update dataSource="${dbsource}" var="del">
            DELETE FROM product_details WHERE pid='${param.pid}';
        </sql:update>
        <c:if test="${del>=1}">
            <font size="5" color="green"> Data deleted Successfully </font>
            <br>
            <a href="index.html"> Go to Home Page </a>
        </c:if>
    </body>
</html>
