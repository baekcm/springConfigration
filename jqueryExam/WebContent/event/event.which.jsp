<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<input id="whichkey" value="">
	<div id="log"></div>

	<script type="text/javascript">
		$( "#whichkey" ).on( "keydown", function( event ) {
	  		$( "#log" ).html( event.type + ": " +  event.which );
		});
		
		$( "#whichkey" ).on( "mousedown", function( event ) {
			$( "#log" ).html( event.type + ": " +  event.which );
		});
	</script>

</body>
</html>