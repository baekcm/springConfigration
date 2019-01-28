<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	p {
	    margin-left: 10px;
	    color: blue;
	    width: 200px;
	    cursor: pointer;
  	}

  	span {
	    color: red;
	    cursor: pointer;
  	}

  	div.abs {
	    width: 50px;
	    height: 50px;
	    position: absolute;
	    left: 220px;
	    top: 35px;
	    background-color: green;
	    cursor: pointer;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div id="result">Click an element.</div>
	<p>
	  	This is the best way to <span>find</span> an offset.
	</p>
	
	<div class="abs">
	</div>
	
	<script type="text/javascript">
	$( "*", document.body ).click(function( event ) {
	  	var offset = $( this ).offset();
	  	event.stopPropagation();
	  	$( "#result" ).text( this.tagName + " coords ( " + offset.left + ", " + offset.top + " )" );
	});
	</script>

</body>
</html>