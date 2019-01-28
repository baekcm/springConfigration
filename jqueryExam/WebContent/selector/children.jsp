<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	body {
    	font-size: 16px;
    	font-weight: bolder;
  	}

 	div {
    	width: 130px;
    	height: 82px;
    	margin: 10px;
    	float: left;
    	border: 1px solid blue;
    	padding: 4px;
  	}

  	#container {
    	width: auto;
    	height: 105px;
    	margin: 0;
    	float: none;
    	border: none;
  	}

  	.hilite {
    	border-color: red;
  	}

  	#results {
    	display: block;
    	color: red;
  	}

  	p, span, em, a, b, button {
    	border: 1px solid transparent;
  	}

  	p {
    	margin: 10px;
  	}

  	span {
    	color: blue;
  	}

  	input {
    	width: 100px;
  	}
  	</style>
  	
  	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div id="container">
	  	<div>
	    	<p>This 
	    		<span>is the 
	    			<em>way</em> we
	    		</span>write 
	    		<em>the</em> 
	    		demo,
	    	</p>
	  	</div>
	
	  	<div>
	    	<a href="#">
	    		<b>w</b>
	    		rit
	    		<b>e</b>
	    	</a> the <span>demo,</span> 
	    	<button>write the</button> 
	    	demo,
	  	</div>
	
	  	<div>
	    	This 
	    	<span>the way we 
	    		<em>write</em> 
	    		the 
	    		<em>demo</em> 
	    		so
	    	</span>
	    	<input type="text" value="early"> 
	    	in
	  	</div>
	
	  	<p>
	    	<span>t</span>
	    	he 
	    	<span>m</span>
	    	orning.
	    	<span id="results">Found 
	    		<span>0</span> 
	    		children in 
	    		<span>TAG</span>
	    		.
	    	</span>
	  	</p>
	</div>
	
	<script>
		$( "#container" ).click(function ( event ) {
		  	$( "*" ).removeClass( "hilite" );
		  	var kids = $( event.target ).children();
		  	var len = kids.addClass( "hilite" ).length;
		  	$( "#results span:first" ).text( len );
		  	$( "#results span:last" ).text( event.target.tagName );
		  	event.preventDefault();
		});
	</script>

</body>
</html>