<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	input, label {
    	line-height: 1.5em;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<form>
	  	<div>
	    	<input type="radio" name="fruit" value="orange" id="orange">
	    	<label for="orange">orange</label>
	  	</div>
  		<div>
    		<input type="radio" name="fruit" value="apple" id="apple">
    		<label for="apple">apple</label>
  		</div>
  		<div>
    		<input type="radio" name="fruit" value="banana" id="banana">
    		<label for="banana">banana</label>
  		</div>
  		<div id="log"></div>
	</form>

	<script>
		$( "input" ).on( "click", function() {
		  	$( "#log" ).html( $( "input:checked" ).val() + " is checked!" );
		});
	</script>

</body>
</html>