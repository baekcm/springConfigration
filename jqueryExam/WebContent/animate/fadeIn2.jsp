<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
	  	p {
		    position: relative;
		    width: 400px;
		    height: 90px;
	  	}
	
	  	div {
		    position: absolute;
		    width: 500px;
		    height: 85px;
		    font-size: 36px;
		    text-align: center;
		    color: yellow;
		    background: red;
		    padding-top: 25px;
		    top: 0;
		    left: 0;
		    display: none;
	  	}
	
	  	span {
	    	display: none;
	  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<p>
	  Let it be known that the party of the first part
	  and the party of the second part are henceforth
	  and hereto directed to assess the allegations
	  for factual correctness... (<a href="#">click!</a>)
	  <div><span>CENSORED!</span></div>
	</p>

	<script type="text/javascript">
		$( "a" ).click(function() {
		  	$( "div" ).fadeIn( 3000, function() {
		    	$( "span" ).fadeIn( 100 );
		  	});
		  	return false;
		});
	</script>

</body>
</html>