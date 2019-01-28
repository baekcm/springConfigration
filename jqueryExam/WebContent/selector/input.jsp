<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	textarea {
    	height: 25px;
  	}
  	</style>
  	
  	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<form>
	  	<input type="button" value="Input Button" />
	  	<input type="checkbox" />
	  	<input type="file" />
	  	<input type="hidden" />
	  	<input type="image" />
	  	<input type="password" />
	  	<input type="radio" />
	  	<input type="reset" />
	  	<input type="submit" />
	  	<input type="text" />
	  	
	  	<select>
	    	<option>Option</option>
	  	</select>
	  	
	  	<textarea></textarea>
	  	
	  	<button>Button</button>
	</form>

	<div id="messages"></div>

	<script type="text/javascript">
	var allInputs = $( ":input" );
	var formChildren = $( "form > *" );
	
	$( "#messages" ).text( "Found " + allInputs.length + " inputs and the form has " + formChildren.length + " children." );
	
	$( "form" ).submit(function( event ) {
	  	event.preventDefault();
	});
	</script>

</body>
</html>