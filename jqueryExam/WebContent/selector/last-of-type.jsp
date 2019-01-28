<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	span.solast {
    	text-decoration: line-through;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>
		<span>Corey,</span>
  		<span>Yehuda,</span>
  		<span>Adam,</span>
  		<span>Todd</span>
	</div>

	<div>
	  	<span>Jorn,</span>
  		<span>Scott,</span>
  		<span>Timo,</span>
  		<b>Nobody</b>
	</div>

	<script type="text/javascript">
	$( "span:last-of-type" )
	.css({ color:"red", fontSize:"80%" })
	.hover(function() {
		$( this ).addClass( "solast" );
	}, function() {
	    $( this ).removeClass( "solast" );
	});
	</script>

</body>
</html>