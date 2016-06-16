<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>JSP Example Login</title>
    </head>
    <body>
        <h3>Input full name:</h3>
        <form method="get">
            Name:
            <input type="text" name="name">
            <br/>
            Surname:
            <input type="text" name="surname">
            <br/>
            <input type="submit" value="Login">
        </form>

        <%
            String[] name = request.getParameterValues("name");
            String[] surname = request.getParameterValues("surname");
            if (name != null && surname != null) {
        %>
        <p> Hello, <%= name[0] %> <%= surname[0] %>, Date:   <%= (new java.util.Date()) %> </p>
        <a href="<%= request.getRequestURI() %>">Clear</a>
        <%
            }
        %>
    </body>
</html>