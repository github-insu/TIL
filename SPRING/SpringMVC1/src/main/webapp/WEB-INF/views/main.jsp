<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- join.jsp 경우 WEB-INF 안 views 안에 있기 때문에 경로를 찾기 힘듬 -->
	<!-- 따라서 컨트롤러에게 요청해서 ViewResolver가 찾게 하는 것이 효율적 -->
	<!-- 루트 경로에서 시작한 join을 찾아야 하므로 /myapp/join 입력 -->
	<a href="/myapp/join"><button>회원가입</button></a>
	<a href=""><button>로그인</button></a>

</body>
</html>
