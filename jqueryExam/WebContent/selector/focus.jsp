<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	span {
    	display: none;
  	}
  	</style>
  	
  	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<p>
		<input type="text" />
		<span>focus fire</span>
	</p>
	<p>
		<input type="password" />
		<span>focus fire</span>
	</p>

	<script type="text/javascript">
		$( "input" ).focus(function() {
  			$( this ).next( "span" ).css( "display", "inline" ).fadeOut( 1000 );
		});
		
		$( "input[type=text]" ).blur(function() {
			  alert('focus �� ������!');
		});
	</script>

</body>
</html>