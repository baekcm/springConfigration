<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	.foo {
	    color: blue;
	    background-color: yellow;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<ul class="nav">
	  	<li>List 1, item 1</li>
	  	<li>List 1, item 2</li>
	  	<li>List 1, item 3</li>
	</ul>
	
	<ul class="nav">
	  	<li>List 2, item 1</li>
	  	<li>List 2, item 2</li>
	  	<li>List 2, item 3</li>
	</ul>
	
	<script>
		// Applies yellow background color to a single <li>
		$( "ul.nav li:eq(1)" ).css( "backgroundColor", "#ff0" );
		
		// Applies italics to text of the second <li> within each <ul class="nav">
		$( "ul.nav" ).each(function( index ) {
		  	$( this ).find( "li:eq(1)" ).css( "fontStyle", "italic" );
		});
		
		// Applies red text color to descendants of <ul class="nav">
		// for each <li> that is the second child of its parent
		$( "ul.nav li:nth-child(2)" ).css( "color", "red" );
		
		$( "li:eq(-2)" ).addClass( "foo" );
	</script>

</body>
</html>