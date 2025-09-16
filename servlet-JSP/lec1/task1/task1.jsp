<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
String concat(int id , String name){
	return "id : "+id + " name: " + name ;
}
%>
<%
int id = 1;
String name="Radwa";
String res = concat(id ,name);
out.println(res);
%>


</body>
</html>