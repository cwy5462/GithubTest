<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String id = request.getParameter("id");
String age = request.getParameter("age");
int age1 = Integer.parseInt(age);

String major=request.getParameter("major");
String protocol = request.getParameter("protocol");
String[] hobbys = request.getParameterValues("hobby");

if(age1>=20)
response.sendRedirect("pass.jsp");
else
response.sendRedirect("ng.jsp");

%>

아이디 : <%=id  %><br>
전공 : <%=major %><br>
프로토콜 : <%=protocol %><br>
취미 : <%=Arrays.toString(hobbys)%>
</body>
</html>