<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	div {
	    width: 60px;
	    height: 60px;
	    margin: 5px;
	    float: left;
	    border: 2px white solid;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div></div>
	<div class="middle"></div>
	<div class="middle"></div>
	<div class="middle"></div>
	<div class="middle"></div>
	<div></div>

	<script type="text/javascript">
		$( "div" )
		.css( "background", "#c8ebcc" )
		.filter( ".middle" )
		.css( "border-color", "red" );
	</script>
	
	<div id="first"></div>
	<div id="second"></div>
	<div id="third"></div>
	<div id="fourth"></div>
	<div id="fifth"></div>
	<div id="sixth"></div>
	
	<script type="text/javascript">
		$( "div" )
	  	.css( "background", "#c8ebcc" )
	  	.filter(function( index ) {
	    	return index === 7 || $( this ).attr( "id" ) === "fourth";
	  	})
	    .css( "border", "3px double red" );
	</script>

</body>
</html>