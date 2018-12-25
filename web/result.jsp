<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Beer recomendation JSP</h1>
<%
    List styles = (List) request.getAttribute("styles");
    Iterator it = styles.iterator();
    while (it.hasNext()){
        out.print("<br> try : " + it.next());
    }
%>
</body>
</html>
