<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>고객센터 문의글 읽기 - RESUMY</title>
    <link href="/img/fibicon.png" rel="shortcut icon" type="image/x-icon">
    <link href="/assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/common.css" rel="stylesheet">
    <link href="/css/navbar.css" rel="stylesheet">
    <link href="/css/footer.css" rel="stylesheet">
    <!-- font-awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    <!-- font-family: 'Gowun Dodum', sans-serif; -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
    <!-- font-family: 'Roboto Condensed', sans-serif; -->
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
</head>

<body>
    <header class="container-md">
        <nav class="navbar navbar-expand-md fixed-top">
            <div class="container-md">
                <a class="navbar-brand" href="index.html">
                    <img src="/img/logo_main.png">
                </a>
                <ul>
                    <li><a href="companyBoard.do">기업정보</a></li>
                    <li><a href="fedboard">자소서 게시판</a></li>
                    <li><a href="qnaBoard.do" class="active">고객센터</a></li>
                </ul>
                <button class="login_btn">로그인</button>
            </div>
        </nav>
    </header>
    <!-- ./navbar -->
    
    
    	
    <tr>
    	<td> ${introResult.intro.title }</td>
    	<hr>
    </tr>
	<c:choose>
		<c:when test="${empty introResult.conList || fn:length(introResult.conList) == 0 }">
		</c:when>
		<c:otherwise>
			<tr>
				<td>수정 날짜</td>
				<td colspan="4">${introResult.intro.modydate }</td>
				<hr>
			</tr>
			<c:forEach var="con" items="${introResult.conList }" varStatus="status">
			
					
					<tr>
						<td>질문 ${status.count}</td>
						<br>
						<td>${con.question }</td>
						<br>
					
						<td>내용</td>
						<br>
						<td>${con.content }</td>
						<br>
						<br>	
					</tr>
					<hr>
			</c:forEach>
			
		</c:otherwise>
	</c:choose>
	<!-- 문의글 -->
	
	
	<form name="frm" action="fedCommentOk" method="post">
		<input type="hidden" name="iid" value="${introResult.intro.id }">
		<input type="text" name="content" style="display: block; width:90vh"/>
		<button type="submit">댓글 작성</button>
	</form>
	<!-- 댓글 달기 -->
	
	
	<h5>댓글</h5>
	<c:choose>
		<c:when test="${empty introResult.fedList || fn:length(introResult.fedList) == 0 }">
		</c:when>
			<c:otherwise>
				
				<c:forEach var="fed" items="${introResult.fedList }" varStatus="status">
				
					<tr>
						<td>이름</td>
						<td>${fed.userid }</td>
						<td>/ 답변날짜</td>
						<td >${fed.regdate }</td>
						<br>
					</tr>
					<tr>
						
						
						<td>내용</td>
						<td >${fed.content }</td>
					</tr>
					<hr>
					<br>
				</c:forEach>
				
			</c:otherwise>
	</c:choose>
	<!-- 답변 -->
	<button onClick="location.href='fedBoard'">목록</button>
	
</body>
</html>