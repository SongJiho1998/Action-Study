<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>c:import</h3>
	<p>
		페이지에서 다른페이지를 불러오는 기능. <br>
		var : 페이지를 저장하는 변수명 <br>
		url : 불러올 페이지의 위치 <br>
	</p>
	
	<c:import var="header" url="http://www.google.com"/>
	
    <%-- ${pageScope.header} --%>
    <%-- <c:out value="${pageScope.header}" escapeXml="true"/> --%>
	<h3>c:redirect 태그 이용하기</h3>
	<p>
		페이지 변경해주는 태그
	</p>
<%-- 	<c:redirect url="https://search.naver.com/search.naver"> --%>
<%-- 		<c:param name="query" value="코로나"/> --%>
<%-- 	</c:redirect> --%>

	<h4>c:catch 태그 이용해서 예외처리하기</h4>
	<%
		String test = null;
		request.setAttribute("test", test);
	%>

	<c:catch var="e">
		<%= test.charAt(0) %>
	</c:catch>
	
	${e}
	
	<jsp:useBean id="p" class="com.kh.model.vo.Person" scope="request"/>
	
	<jsp:setProperty name="p" property="name" value="송지호"/> <br>S
	<jsp:setProperty name="p" property="age" value="25"/> <br>
	<jsp:setProperty name="p" property="gender" value="남"/>
	
	이름 : <jsp:getProperty name="p" property="name"/> <br>
	나이 : <jsp:getProperty name="p" property="age"/> <br>
	성별 : <jsp:getProperty name="p" property="gender"/> <br>
	
</body>
</html>