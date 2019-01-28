<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	div {
	    margin: 3px;
	    width: 40px;
	    height: 40px;
	    position: absolute;
	    left: 0px;
	    top: 30px;
	    background: green;
	    display: none;
  	}

  	div.newcolor {
    	background: blue;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<button id="start">Start</button>
	<button id="stop">Stop</button>
	<div></div>

	<script>
		$( "#start" ).click(function() {
		  	var myDiv = $( "div" );
		  	myDiv.show( "slow" );
		  	myDiv.animate({
		    left:"+=200"
  			}, 5000 );

		  	myDiv.queue(function() {
		    var that = $( this );
		    that.addClass( "newcolor" );
		    that.dequeue();
		  	});

		  	myDiv.animate({
		    	left:"-=200"
		  	}, 1500 );
		
		 	myDiv.queue(function() {
		    	var that = $( this );
		    	that.removeClass( "newcolor" );
		    	that.dequeue();
		  	});
		
		  	myDiv.slideUp();

		});

		$( "#stop" ).click(function() {
  			var myDiv = $( "div" );
  			myDiv.clearQueue();
  			myDiv.stop();
		});
	</script>

</body>
</html>