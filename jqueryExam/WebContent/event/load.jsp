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

	<div id="result"></div>
	<ol id="new-projects"></ol>
	<div id="success">
		<div id="error"></div>
	</div>

	<script type="text/javascript">
	$( "#result" ).load( "./live.jsp", function() {
		alert( "Load was performed." );
	});
	
	$( "#new-projects" ).load( "./load_test.jsp #projects li" );
	
	$( "#success" ).load( "./load_test2.jsp", function( response, status, xhr ) {
		if ( status == "error" ) {
		   	var msg = "Sorry but there was an error: ";
		    $( "#error" ).html( msg + xhr.status + " " + xhr.statusText );
		}
	});
	</script>

</body>
</html>