<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	span {
	    color: blue;
	    font-weight: bold;
  	}

  	button {
    	width: 100px;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>
		<button disabled="disabled">First</button> - 
		<span></span>
	</div>
	<div>
		<button>Second</button> - 
		<span></span>
	</div>
	<div>
		<button disabled="disabled">Third</button> - 
		<span></span>
	</div>
	
	<br><br>
	
	<p>Hello</p>
	<p class="selected">Hello Again</p>
	<div>
		<span>And Again</span>
	</div>

	<script type="text/javascript">
	$( "button[disabled]" )
	.next()
	.text( "this button is disabled" );
	
	$( "p" ).next( ".selected" )
	.css( "background", "yellow" );
	</script>

</body>
</html>