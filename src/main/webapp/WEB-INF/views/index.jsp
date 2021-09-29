<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>

<title>RESUMY - 채용 도우미 사이트</title>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


</head>

<body>

	<div class="container" style="margin-top: 100px">
		<div>

			<!-- 헤더 -->
			<c:import url="./layout/header.jsp">
				<c:param name="headerMenu" value="${headerMenu }" />
			</c:import>
			
			<!-- 콘텐츠 -->
			<c:import url="/${content }">
			</c:import>


			<!-- 푸터 -->
			<c:import url="./layout/footer.jsp">
			</c:import>


		</div>
	</div>

</body>
</html>