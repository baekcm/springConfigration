<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	div {
    	float: left;
  	}

  	span {
    	color: blue;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>
	  	<ul>
		    <li>John</li>
		    <li>Karl</li>
		    <li>Brandon</li>
	  	</ul>
	</div>
	
	<div>
	  	<ul>
	    	<li>Sam</li>
	  	</ul>
	</div>
	
	<div>
	  	<ul>
	    	<li>Glen</li>
		    <li>Tane</li>
		    <li>Ralph</li>
		    <li>David</li>
	  	</ul>
	</div>
	
	<!-- 자식 요소 집합에서 선택한 색인에 위치한 자식을 찾는 요소 -->
	<script type="text/javascript">
	$( "ul li:nth-child(2)" )
	.append( "<span> - 2nd!</span>" );
	</script>

</body>
</html>