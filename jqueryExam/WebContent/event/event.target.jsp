<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>event.target</title>

	<style>
  	span, strong, p {
    	padding: 8px;
    	display: block;
    	border: 1px solid #999;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div id="log"></div>
	<div>
	  	<p>
	    	<strong><span>click</span></strong>
	  	</p>
	</div>

	<script type="text/javascript">
	$( "body" ).click(function( event ) {
	  	$( "#log" ).html( "clicked: " + event.target.nodeName );
	});
	</script>
	
	<br><br>
	<ul>
  		<li>item 1
    		<ul>
      			<li>sub item 1-a</li>
      			<li>sub item 1-b</li>
    		</ul>
  		</li>

  		<li>item 2
    		<ul>
      			<li>sub item 2-a</li>
      			<li>sub item 2-b</li>
    		</ul>
  		</li>
	</ul>
	
	<script type="text/javascript">
		function handler( event ) {
		  	var target = $( event.target );
		  	if ( target.is( "li" ) ) {
		    	target.children().toggle();
		  	}
		}

		$( "ul" ).click( handler ).find( "ul" ).hide();
	</script>

</body>
</html>