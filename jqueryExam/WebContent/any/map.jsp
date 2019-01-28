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

	<script type="text/javascript">
	var arr = [ "a", "b", "c", "d", "e" ];
	$( "div" ).text( arr.join( ", " ) );
	
	//A0,B1,C2,D3,E4
	arr = jQuery.map( arr, function( n, i ) {
	  	return ( n.toUpperCase() + i );
	});
	
	$( "p" ).text( arr.join( ", " ) );
	
	//A0A0,B1B1,C2C2,D3D3,E4E4
	arr = jQuery.map( arr, function( a ) {
	  	return a + a;
	});
	
	$( "span" ).text( arr.join( ", " ) );
	</script>

</body>
</html>