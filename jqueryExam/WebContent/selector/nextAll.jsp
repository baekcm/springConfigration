<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	div {
	    width: 80px;
	    height: 80px;
	    background: #abc;
	    border: 2px solid black;
	    margin: 10px;
	    float: left;
  	}

  	div.after {
    	border-color: red;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>first</div>
	<div>sibling
		<div>child</div>
	</div>
	<div>sibling</div>
	<div>sibling</div>

	<script type="text/javascript">
	$( "div:first" )
	.nextAll()
	.addClass( "after" );
	</script>
	
</body>
</html>