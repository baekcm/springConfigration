<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	textarea {
   		height: 45px;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<form>
	  	Button : <input type="button" value="Input Button" />
	  	<br>
	  	checkbox : <input type="checkbox" />
	  	<br>
	  	file : <input type="file" />
	  	<br>
	  	hidden : <input type="hidden" />
	  	<br>
	  	image : <input type="image" />
	  	<br>
	  	password : <input type="password" />
	  	<br>
	  	radio : <input type="radio" />
	  	<br>
	  	reset : <input type="reset" />
	  	<br>
	  	submit : <input type="submit" />
	  	<br>
	  	text : <input type="text" />
	  	<br>
	  	select : <select>
	  		<option>Option</option>
	  	</select>
	  	<br>
	 	textarea : <textarea></textarea>
	 	<br>
	  	Button : <button>Button</button>
	</form>

	<div></div>

	<script type="text/javascript">
	var input = $( "input:file" ).css({
	  	background: "yellow",
	  	border: "1px red solid"
	});
	
	$( "div" )
	  	.text( "For this type jQuery found " + input.length + "." )
	  	.css( "color", "red" );
	$( "form" ).submit(function( event ) {
	  	event.preventDefault();
	});
	</script>

</body>
</html>