<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
 response.setStatus(200);
%>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/include/staticFiles.jsp"/>
<body>
<jsp:include page="/WEB-INF/views/include/bodyHeader.jsp"/>
<div class="conatiner">
<div class="content">
	<div class="jumbotron">
		<h2 style="colo:red;"><fmt:message key="{message}"/></h2>
		<p>
		
			Failed URL: ${url}
			Exception: ${exception.message}
			<c:forEach items="${exception.stackTrace}" var="ste"> ${ste}
			</c:forEach>
		 
		 </p>
		 <p><a class="btn btn-primary btn-lg" href = '<c:url value="/"/>' role="button">
		 <fmt:message key="HOME"/></a></p>
	</div>
</div>
</div>
<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>