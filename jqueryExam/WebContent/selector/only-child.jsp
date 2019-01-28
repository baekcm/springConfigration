<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	div {
	    width: 100px;
	    height: 80px;
	    margin: 5px;
	    float: left;
	    background: #b9e;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>
	  	<button>Sibling!</button>
	  	<button>Sibling!</button>
	</div>
	
	<div>
	  	<button>Sibling!</button>
	</div>
	
	<div>
	  	None
	</div>
	
	<div>
	  	<button>Sibling!</button>
	  	<button>Sibling!</button>
	  	<button>Sibling!</button>
	</div>
	
	<div>
	  	<button>Sibling!</button>
	</div>
	
	<script type="text/javascript">
	$( "div button:only-child" )
	.text( "Alone" )
	.css( "border", "2px blue solid" );
	</script>

</body>
</html>