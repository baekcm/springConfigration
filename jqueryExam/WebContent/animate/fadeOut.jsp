<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
	  	span {
    		cursor: pointer;
  		}

  		span.hilite {
    		background: yellow;
  		}

  		div {
    		display: inline;
    		color: red;
  		}
  		
  		.box,
	  	button {
	    	float: left;
	    	margin: 5px 10px 5px 0;
	  	}

	  	.box {
		    height: 80px;
		    width: 80px;
		    background: #090;
	  	}
	
	  	#log {
	    	clear: left;
	  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<h3>Find the modifiers - <div></div></h3>
	<p>
	  	If you <span>really</span> want to go outside
	  	<span>in the cold</span> then make sure to wear
	  	your <span>warm</span> jacket given to you by
	  	your <span>favorite</span> teacher.
	</p>
	
	<script type="text/javascript">
	$( "span" ).click(function() {
	  	$( this ).fadeOut( 1000, function() {
	    	$( "div" ).text( "'" + $( this ).text() + "' has faded!" );
	    	$( this ).remove();
	  	});
	});
	
	$( "span" ).hover(function() {
	  	$( this ).addClass( "hilite" );
	}, function() {
	  	$( this ).removeClass( "hilite" );
	});
	</script>
	
	<br><br>
	
	<button id="btn1">fade out</button>
	<button id="btn2">show</button>
	<div id="log"></div>
	<div id="box1" class="box">linear</div>
	<div id="box2" class="box">swing</div>
	
	<script type="text/javascript">
	$( "#btn1" ).click(function() {
	  	function complete() {
	    	$( "<div>" ).text( this.id ).appendTo( "#log" );
	  	}
	  	$( "#box1" ).fadeOut( 1600, "linear", complete );
	  	$( "#box2" ).fadeOut( 1600, complete );
	});
	
	$( "#btn2" ).click(function() {
	  	$( "div" ).show();
	  	$( "#log" ).empty();
	});
	</script>

</body>
</html>