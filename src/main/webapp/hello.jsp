<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Hello World!</h1>

    <%
        out.println("hello jsp~");
        int i =3;
    %>

    <%="hello"%>
    <%=i%>
    <%!
        void show(){}
        String name = "Nancy";
    %>
</body>
</html>
