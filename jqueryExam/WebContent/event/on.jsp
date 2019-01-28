<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	
	<style>
  	p {
    	color: red;
  	}

  	span {
    	color: blue;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<p>Has an attached custom event.</p>
	<button>Trigger custom event</button>
	<span style="display:none;"></span>
	
	<!-- on( events [, selector ] [, data ], handler ) -->
	<script type="text/javascript">
	$( "p" ).on( "myCustomEvent", function( event, myName ) {
		$( this ).text( myName + ", hi there!" );
	  	
	  	$( "span" )
	    .stop()
	    .css( "opacity", 1 )
	    .text( "myName = " + myName )
	    .fadeIn( 30 )
	    .fadeOut( 1000 );
	});
	
	$( "button" ).click(function () {
	  	$( "p" ).trigger( "myCustomEvent", [ "John" ] );
	});
	</script>

</body>
</html>