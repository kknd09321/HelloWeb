<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%----%>
<%@ taglib prefix="c" 
		uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" 
		uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" 
		uri="http://java.sun.com/jsp/jstl/sql" %>    

<c:remove var="isLogin" scope="session" />
<c:remove var="userid" scope="session" />
<%-- 로그인시 생성한 변수 삭제 --%>

<c:redirect url="index.jsp" />


    