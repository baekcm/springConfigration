<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	div {
    	margin: 2px;
    	color: blue;
  	}

  	span {
    	color: red;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>value1 before creation: <span></span></div>
	<div>value1 after creation: <span></span></div>
	<div>value1 after removal: <span></span></div>
	<div>value2 after removal: <span></span></div>

	<script type="text/javascript">
	var div = $( "div" )[ 0 ];
	$( "span:eq(0)" ).text( "" + $( "div" ).data( "test1" ) );
	$.data( div, "test1", "VALUE-1" );
	$.data( div, "test2", "VALUE-2" );
	$( "span:eq(1)" ).text( "" + jQuery.data( div, "test1" ) );
	$.removeData( div, "test1" );
	$( "span:eq(2)" ).text( "" + jQuery.data( div, "test1" ) );
	$( "span:eq(3)" ).text( "" + jQuery.data( div, "test2" ) );
	</script>

</body>
</html>