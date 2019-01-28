<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	div {
    	width: 40px;
    	height: 40px;
    	margin: 5px;
    	float: left;
    	border: 2px blue solid;
    	text-align: center;
  	}
  	span {
    	color: red;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<button>Change colors</button>
	<span></span>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div id="stop">Stop here</div>
	<div></div>
	<div></div>
	<div></div>
	
	<script>
	$( "button" ).click(function() {
	  	$( "div" ).each(function( index, element ) {
	    	// element == this / element != $(this)
	    	$( element ).css( "backgroundColor", "yellow" );
	    	if ( $( this ).is( "#stop" ) ) {
	      		$( "span" ).text( "Stopped at div index #" + index );
	      		return false;
	    	}
	 	});
	});
	</script>

</body>
</html>