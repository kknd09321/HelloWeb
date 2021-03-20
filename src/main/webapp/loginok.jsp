<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%----%>
<%@ taglib prefix="c"
		uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" 
		uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" 
		uri="http://java.sun.com/jsp/jstl/sql" %>

<fmt:requestEncoding value="utf-8" />

<sql:setDataSource var="mariadb"
scope="application" 
url="jdbc:mariadb://192.168.18.128:3306/zzyzzy"
driver="org.mariadb.jdbc.Driver"
user="zzyzzy" password="123456" />
<%-- 마리아디비 접속을 위해 접속정보 생성 --%>

<c:catch var="result">
	<sql:query dataSource="${mariadb}" var='login'>
		select userid, passwd from members
		where userid = ? and passwd = ?
		<sql:param value='${param.uid}' />
		<sql:param value='${param.pwd}' />
	</sql:query>
</c:catch>

<c:choose>
	<c:when test='${login.rowCount == 1}'>
		<c:set var='isLogin' value='yes'
			scope='session' />
		<c:set var='userid' value='${param.uid}'
			scope='session' />
		<c:redirect url='member.jsp' />				
	</c:when>
	
	<c:when test='${login.rowCount == 0}'>
	<script>
	alert('아이디나 비밀번호 확인!!');
	history.back();
	</script>
	</c:when>
</c:choose>







