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

	<button>fadeToggle p1</button>
	<button>fadeToggle p2</button>
	<p>This paragraph has a slow, linear fade.</p>
	<p>This paragraph has a fast animation.</p>
	<div id="log"></div>
	
	<script type="text/javascript">
	$( "button:first" ).click(function() {
	  	$( "p:first" ).fadeToggle( "slow", "linear" );
	});
	
	$( "button:last" ).click(function() {
	  	$( "p:last" ).fadeToggle( "fast", function() {
	    	$( "#log" ).append( "<div>finished</div>" );
	  	});
	});
	</script>

</body>
</html>