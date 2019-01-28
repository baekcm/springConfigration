<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	p {
    	margin: 20px 0 0;
  	}

  	b {
    	color: blue;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<input id="check1" type="checkbox" checked="checked">
	<label for="check1">Check me</label>
	<p></p>
	
	<script type="text/javascript">
	$( "input" ).change(function() {
	  	var $input = $( this );
	  	$( "p" ).html(
	    ".attr( \"checked\" ): <b>" + $input.attr( "checked" ) + "</b><br>" +
	    ".prop( \"checked\" ): <b>" + $input.prop( "checked" ) + "</b><br>" +
	    ".is( \":checked\" ): <b>" + $input.is( ":checked" ) + "</b>" );
	}).change();
	</script>

</body>
</html>