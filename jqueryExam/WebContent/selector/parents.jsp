<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	b, span, p, html body {
    	padding: .5em;
    	border: 1px solid;
  	}

  	b {
    	color: blue;
  	}

  	strong {
    	color: red;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>
	  	<p>
		    <span>
		      	<b>My parents are: </b>
		    </span>
	  	</p>
	</div>
	
	<script type="text/javascript">
	var parentEls = $( "b" ).parents()
	  				.map(function() {
	    				return this.tagName;
	  				})
	  				.get()
	  				.join( ", " );
	
	$( "b" ).append( "<strong>" + parentEls + "</strong>" );
	</script>

</body>
</html>