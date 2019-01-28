<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	div {
    	color: red;
 	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>First</div>
	<div>Second</div>
	<div>Third</div>
	<div>Fourth</div>

	<script type="text/javascript">
	// Returns a NodeList
	//var elems = document.getElementsByTagName( "div" );
	var elems = $("div");
	
	// Convert the NodeList to an Array
	var arr = jQuery.makeArray( elems );
	
	// Use an Array method on list of dom elements
	arr.reverse();
	
	$( arr ).appendTo( document.body );
	</script>

</body>
</html>