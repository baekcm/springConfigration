<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	
	<style>
  	body {
    	font-size: 14px;
  	}
  	</style>
	
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<ul class="topnav">
	  	<li>Item 1</li>
	  	<li>Item 2
	    	<ul>
			    <li>Nested item 1</li>
			    <li>Nested item 2</li>
			    <li>Nested item 3</li>
		    </ul>
  		</li>
  		<li>Item 3</li>
	</ul>

	<script>
		$( "ul.topnav > li" ).css( "border", "3px double red" );
	</script>

</body>
</html>