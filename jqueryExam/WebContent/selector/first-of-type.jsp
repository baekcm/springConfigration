<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	span.fot {
	    color: red;
	    font-size: 120%;
	    font-style: italic;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>
	  	<span>Corey,</span>
	  	<span>Yehuda,</span>
	  	<span>Adam,</span>
	  	<span>Todd</span>
	</div>

	<div>
	  	<b>Nobody,</b>
	  	<span>Jorn,</span>
	  	<span>Scott,</span>
	  	<span>Timo</span>
	</div>

	<!-- 지정한 요소가 부모 요소 안에서 맨 처음 자식 요소에 스타일 적용  -->
	<!-- 다른 종류의 형제 요소가 앞에 있는 경우에도 ‘요소명’에 지정한 요소를 대상으로 한다  -->
	<!-- 동일한 부모 요소 안에서 맨 처음 나타나는 span 요소에 대해서만 스타일이 적용  -->
	<!-- nth-of-type(1) 과 같음  -->
	<script type="text/javascript">
		$( "span:first-of-type" ).addClass( "fot" );
	</script>

</body>
</html>