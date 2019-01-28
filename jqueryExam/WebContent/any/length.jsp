<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	body {
    	cursor: pointer;
  	}

  	div {
	    width: 50px;
	    height: 30px;
	    margin: 5px;
	    float: left;
    	background: green;
  	}

  	span {
    	color: red;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<span></span>
  	<div></div>

	<script type="text/javascript">
	$( document.body ).click(function() {
		$( document.body ).append( $( "<div>" ) );
	    var n = $( "div" ).length;
	    console.log('n : ' + n);
	    $( "span" ).text( "There are " + n + " divs. " + "Click to add more.");
	})
	// Trigger the click to start
	.trigger( "click" );
	</script>

</body>
</html>