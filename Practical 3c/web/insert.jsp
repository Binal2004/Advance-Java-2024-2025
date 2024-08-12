<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form action="insertdb.jsp">
            <table border="0" cellspacing="2" cellpadding="5">
                <tr>
                    <th Colspan="2"> Purchase Product</th>
                </tr>  
                <tr>
                    <td> Product ID </td>
                    <td><input name="pid"/></td>
                </tr>
                <tr>
                    <td> Product Name </td>
                    <td><input name="pname"/></td>
                </tr>
                <tr>
                    <td> Quantity </td>
                    <td><input name="quantity"/></td>
                </tr>
            </table>
           <input type="submit" value="Save">
           <input type="submit" value="Reset">
        </form>
        <font color="red">
        <c:if test="${not empty param.errMsg}">
            <c:out value="$(param errMsg)"/>
            <a href="index.html">Go Back</a>
        </c:if>
        </font>
        <font color="green">
        <c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}"/>
            <a href="index.html">Go Back</a>
        </c:if>
     </body>
</html>
