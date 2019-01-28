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
	    margin: 10px;
	    float: left;
	    border: 2px blue solid;
	    padding: 2px;
  	}

  	span {
    	font-size: 14px;
  	}

  	p {
	    clear: left;
	    margin: 10px;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div></div>
	<div></div>
	<div><span>has child</span></div>
	<div></div>
	<div></div>
	<div></div>
	<div id="start"></div>
	<div></div>
	<p><button>Go to Prev</button></p>
	
	<script type="text/javascript">
	var $curr = $( "#start" );
	$curr.css( "background", "#f99" );
	$( "button" ).click(function() {
	  	$curr = $curr.prev();
	  	$( "div" ).css( "background", "" );
	  	$curr.css( "background", "#f99" );
	});
	</script>
	
	<br><br>
	
	<p>
		<span>Hello</span>
	</p>
	<p class="selected">Hello Again</p>
	<p>And Again</p>
	
	<script type="text/javascript">
	$( "p" )
	.prev( ".selected" )
	.css( "background", "yellow" );
	</script>

</body>
</html>