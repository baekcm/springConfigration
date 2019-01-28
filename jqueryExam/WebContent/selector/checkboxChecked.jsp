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

	<form>
	  	<p>
		    <input type="checkbox" name="newsletter" value="Hourly" checked="checked">
		    <input type="checkbox" name="newsletter" value="Daily">
		    <input type="checkbox" name="newsletter" value="Weekly">
		    <input type="checkbox" name="newsletter" value="Monthly" checked>
		    <input type="checkbox" name="newsletter" value="Yearly">
	  	</p>
	</form>

	<div></div>

	<script>

	var countChecked = function() {
  		var n = $( "input:checked" ).length;
  		$( "div" ).text( n + (n === 1 ? " is" : " are") + " checked!" );
	};

	countChecked();

	$( "input[type=checkbox]" ).on( "click", countChecked );

</script>

</body>
</html>