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

  	span {
    	color: red;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>"John" found at <span></span></div>
	<div>4 found at <span></span></div>
	<div>"Karl" not found, so <span></span></div>
	<div>"Pete" is in the array, but not at or after index 2, so <span></span></div>

	<script type="text/javascript">
	var arr = [ 4, "Pete", 8, "John" ];
	var $spans = $( "span" );
	$spans.eq( 0 ).text( jQuery.inArray( "John", arr ) );
	$spans.eq( 1 ).text( jQuery.inArray( 4, arr ) );
	$spans.eq( 2 ).text( jQuery.inArray( "Karl", arr ) );//not found = -1
	$spans.eq( 3 ).text( jQuery.inArray( "Pete", arr, 2 ) );
	</script>

</body>
</html>