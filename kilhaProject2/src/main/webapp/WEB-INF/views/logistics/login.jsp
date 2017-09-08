<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form action="login" method="POST">
	<!-- 로그인 안한 상태 -->
	<c:if test="${empty userid}">
		<a  href="${pageContext.request.contextPath}/login">
			<button type="button" class="btn btn-round btn-default">
				<i class="fa fa-power-off"></i>&nbsp로그인
			</button>
		</a>
	</c:if>

	<!-- 로그인을 했을 때 -->
	<c:if test="${not empty userid}">
			<a href="${pageContext.request.contextPath}/logout">
			<button type="button" class="btn btn-round btn-success">${username}</button> 
			</a>
	</c:if>
</form>