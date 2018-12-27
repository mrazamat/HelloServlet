<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%@ page import="static java.lang.System.out" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<h1>Beer recomendation JSP</h1>
<%
    List styles = (List) request.getAttribute("styles");
    Iterator it = styles.iterator();
    while (it.hasNext()) {
        out.print("<br> try : " + it.next());
    }
    String[] sizes = request.getParameterValues("sizes");
    for (int i = 0; i < sizes.length; i++) {
        out.print("<br>sizes: " + sizes[i]);
    }
    String client = request.getHeader("User-Agent");
    Cookie[] cookie = request.getCookies();
    HttpSession
    out.print("<br>");
    out.print("User-Agent: " + client);
    out.print("<br>");
    out.print("<br>" + cookie[0]);
%>
</body>
</html>
