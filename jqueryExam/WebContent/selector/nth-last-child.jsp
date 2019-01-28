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
		    <li>Adam</li>
	  	</ul>
	</div>
	
	<div>
	  	<ul>
	    	<li>Dan</li>
	  	</ul>
	</div>
	
	<div>
	  	<ul>
		    <li>Dave</li>
		    <li>Rick</li>
		    <li>Timmy</li>
		    <li>Gibson</li>
	  	</ul>
	</div>
	
	<!-- 동일한 부모 요소 안에서 뒤에서 n번째 자식 요소마다 스타일 적용 -->
	<!-- 나머지는 nth-child() 와 같음 -->
	<script type="text/javascript">
	$( "ul li:nth-last-child(2)" )
	.append( "<span> - 2nd to last!</span>" );
	</script>

</body>
</html>