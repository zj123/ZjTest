<%@ page import="java.util.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page import="org.zj.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>

	<table align="center" border="1" bordercolor="FFDC75" cellpadding="3" cellspacing="3">
	   	<tr>
	       	<th>id</th>
	       	<th>name</th>
	       	<th>功能</th>
	    </tr>
	    <c:forEach items="${sessionScope.users}" var="e">
            <tr>    
                <td align="center">${e.key}</td>
                <td align="center">${e.value.name}</td>
                <td align="center">
                    <input type="button" value="删除" onclick="document.location='userHandle?id=${e.key}'"/>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <br>
    <br>
    
    <form name="f1" method="post" action="userHandle" align="center" >
       id:<input name="id" type="text"><br><br>
       name:<input name="name" type="text"><br><br>
       <input type="submit" value="Submit" />
    </form>
</body>
</html>