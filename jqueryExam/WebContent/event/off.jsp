<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	button {
    	margin: 5px;
  	}

 	button#theone {
    	color: red;
    	background: yellow;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<button id="theone">Does nothing...</button>
	<button id="bind">Add Click</button>
	<button id="unbind">Remove Click</button>
	<div style="display:none;">Click!</div>
	
	<script type="text/javascript">
	function flash() {
	  	$( "div" ).show().fadeOut( "slow" );
	}
	
	$( "#bind" ).click(function() {
	  	$( "body" )
	    .on( "click", "#theone", flash )
	    .find( "#theone" )
	    .text( "Can Click!" );
	});
	
	$( "#unbind" ).click(function() {
	  	$( "body" )
	    .off( "click", "#theone", flash )
	    .find( "#theone" )
	    .text( "Does nothing..." );
	});
	</script>

</body>
</html>