<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	
	<style>
  	p {
	    background: yellow;
	    font-weight: bold;
	    cursor: pointer;
	    padding: 5px;
  	}

  	p.over {
    	background: #ccc;
  	}

  	span {
    	color: red;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<p>Click me!</p>
	<span></span>
	
	<script type="text/javascript">
	var count = 0;
	$( "body" ).on( "click", "p", function() {
	  	$( this ).after( "<p>Another paragraph! " + (++count) + "</p>" );
	});
	</script>

</body>
</html>