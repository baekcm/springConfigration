<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	
	<style>
  	.test {
	    color: #000;
	    padding: .5em;
	    border: 1px solid #444;
  	}

  	.active {
    	color: #900;
  	}

  	.inside {
    	background-color: aqua;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div class="test">test div</div>

	<!-- on( events [, selector ] [, data ], handler ) -->
	<script type="text/javascript">
	$( "div.test" ).on({
		click: function() {
	    	$( this ).toggleClass( "active" );
		}, mouseenter: function() {
		    $( this ).addClass( "inside" );
		}, mouseleave: function() {
		    $( this ).removeClass( "inside" );
	  	}
	});
	</script>

</body>
</html>