<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	.full {
    	border: 1px solid red;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<ul><li>Does the UL contain an LI?</li></ul>

	<!-- selector .has() : 있냐? -->
	<script type="text/javascript">
	//alert($( "ul" ).has( "li" ).length);//1
	$( "ul" ).append( "<li>" + ( $( "ul" ).has( "li" ).length ? "Yes" : "No" ) + "</li>" );
	$( "ul" ).has( "li" ).addClass( "full" );
	</script>

</body>
</html>