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
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>There are 6 divs in this document.</div>
	<div></div>
	<div class="dup"></div>
	<div class="dup"></div>
	<div class="dup"></div>
	<div></div>

	<script type="text/javascript">
	// unique() must take a native array : DOM 요소 배열로 변환 
	var divs = $( "div" ).get();
	
	// Add 3 elements of class dup too (they are divs) : 중복 요소를 배열에 추가
	divs = divs.concat( $( ".dup" ).get() );
	$( "div:eq(1)" ).text( "Pre-unique there are " + divs.length + " elements." );
	
	// unique 함수는 DOM 요소 배열로 변환 후 사용할 수 있다. 중복 요소 제거. 
	divs = jQuery.unique( divs );
	$( "div:eq(2)" )
	.text( "Post-unique there are " + divs.length + " elements." )
	.css( "color", "red" );
	</script>

</body>
</html>