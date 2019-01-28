<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	p {
	    width: 80px;
	    margin: 0;
	    padding: 5px;
  	}

  	div {
	    width: 40px;
	    height: 40px;
	    position: absolute;
  	}

  	#one {
	    top: 0;
	    left: 0;
	    background: #f00;
  	}

  	#two {
	    top: 20px;
	    left: 20px;
	    background: #0f0;
  	}

  	#three {
	    top: 40px;
	    left:40px;
	    background:#00f;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<p>And this is the library that John built...</p>
	<div id="one"></div>
	<div id="two"></div>
	<div id="three"></div>
	
	<script type="text/javascript">
	$( "div" ).click(function() {
	  	$( this ).fadeTo( "fast", Math.random() );
	});
	</script>

</body>
</html>