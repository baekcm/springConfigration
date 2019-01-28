<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
	  	span {
		    color: red;
		    cursor: pointer;
	  	}
	
	  	div {
		    margin: 3px;
		    width: 80px;
		    display: none;
		    height: 80px;
		    float: left;
	  	}
	
	  	#one {
	    	background: #f00;
	  	}
	
	  	#two {
	    	background: #0f0;
	  	}
	
	  	#three {
	   		background: #00f;
	  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<span>Click here...</span>
	<div id="one"></div>
	<div id="two"></div>
	<div id="three"></div>

	<script type="text/javascript">
		$( document.body ).click(function() {
		  	$( "div:hidden:first" ).fadeIn( "slow" );
		});
	</script>

</body>
</html>