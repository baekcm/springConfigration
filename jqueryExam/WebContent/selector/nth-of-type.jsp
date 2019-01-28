<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	.nth {
    	color: red;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>
	  	<span>John</span>,
	  	<b>Kim</b>,
	  	<span>Adam</span>,
	  	<b>Rafael</b>,
	  	<span>Oleg</span>
	</div>
	
	<div>
	  	<b>Dave</b>,
	  	<span>Ann</span>
	</div>
	
	<div>
	  	<i><span>Maurice</span></i>,
	  	<span>Richard</span>,
	  	<span>Ralph</span>,
	  	<span>Jason</span>
	</div>
	
	<!-- 동일한 부모 요소 안에서 n번째 자식 요소마다 스타일 적용  -->
	<!-- 다른 종류의 형제 요소가 있는 경우에도 ‘요소명’에 해당하는 요소만을 셈  -->
	<script type="text/javascript">
	$( "span:nth-of-type(2)" )
	.append( "<span> is 2nd sibling span</span>" )
	.addClass( "nth" );
	</script>

</body>
</html>