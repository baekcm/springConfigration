<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	div {
    	color: blue;
  	}

  	p {
    	color: green;
    	margin: 0;
  	}

  	span {
    	color: red;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div></div>
	<p></p>
	<span></span>

	<!-- 배열의 요소를 찾아 필터(배열 중복값 원소 제거)합니다. 원본 배열에 영향을 주지 않습니다. -->
	<script type="text/javascript">
	var arr = [ 1, 9, 3, 8, 6, 1, 5, 9, 4, 7, 3, 8, 6, 9, 1 ];
	
	$( "div" ).text( arr.join( ", " ) );
	
	arr = jQuery.grep(arr, function( n, i ) {
	  	return ( n !== 5 && i > 4 );
	});
	
	$( "p" ).text( arr.join( ", " ) );
	
	arr = jQuery.grep(arr, function( a ) {
	  	return a !== 9;
	});
	
	$( "span" ).text( arr.join( ", " ) );
	</script>

</body>
</html>