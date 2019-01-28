<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	div {
	    height: 500px;
	    width: 500px;
	    margin: 10px;
	    background-color: #ffd;
	    overflow: auto;
  	}
  	</style>
	
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>Click.</div>

	<script type="text/javascript">
		var last, diff;
		
		$( "div" ).click(function( event ) {
		  	if ( last ) {
		    	diff = event.timeStamp - last;
		    	$( "div" ).append( "time since last event: " + diff + "<br>" );
		  	} else {
		    	$( "div" ).append( "Click again.<br>" );
		  	}
		
		  	last = event.timeStamp;
		});
	</script>

</body>
</html>