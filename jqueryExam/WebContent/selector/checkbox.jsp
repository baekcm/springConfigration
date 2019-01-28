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
	  	<input type="button" value="Input Button">
	  	<input type="checkbox">
	  	<input type="checkbox">
	  	<input type="file">
	  	<input type="hidden">
	  	<input type="image">
	  	<input type="password">
	  	<input type="radio">
	  	<input type="reset">
	  	<input type="submit">
	  	<input type="text">

	  	<select>
	    	<option>Option</option>
	  	</select>
	
	  	<textarea></textarea>
	
	  	<button>Button</button>
	</form>

	<div></div>

	<script>
		var input = $("form input:checkbox")
			.wrap( "<span></span>" )
			.parent()
			.css({
			    background: "yellow",
			    border: "3px red solid"
			});
		
		$( "div" )
		  	.text( "For this type jQuery found " + input.length + "." )
		  	.css( "color", "red" );
		
		// Prevent the form from submitting
		$( "form" ).submit(function( event ) {
		    event.preventDefault();
		});
	</script>

</body>
</html>