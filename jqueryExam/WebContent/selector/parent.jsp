<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	div, p {
    	margin: 10px;
  	}
  	
  	td {
    	width: 40px;
    	background: green;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>div,
	  	<span>span, </span>
	  	<b>b </b>
	</div>
	
	<p>p,
	  	<span>span,
	    	<em>em </em>
	  	</span>
	</p>
	
	<div>div,
	  	<strong>strong,
	    	<span>span, </span>
	    	<em>em,
	      		<b>b, </b>
	    	</em>
	  	</strong>
	  	<b>b </b>
	</div>
	
	<script type="text/javascript">
	$( "*", document.body ).each(function() {
	  	var parentTag = $( this ).parent().get( 0 ).tagName;
		//console.log("parentTag : " + parentTag);
	  	$( this ).prepend( document.createTextNode( parentTag + " > " ) );
	});
	</script>
	
	<br><br>
	
	<div>
		<p>Hello</p>
	</div>
	<div class="selected">
		<p>Hello Again</p>
	</div>
	
	<script type="text/javascript">
	$( "p" ).parent( ".selected" ).css( "background", "yellow" );
	</script>
	
	<br><br>

	<table border="1">
	  	<tr>
	  		<td>Value 1</td>
	  		<td></td>
	  	</tr>
	  	<tr>
	  		<td>Value 2</td>
	  		<td></td>
	  	</tr>
	</table>
	
	<!-- <td>사이에 text node 값이 없는 경우는 안된다.</td> -->
	<script type="text/javascript">
	console.log("td:parent : " + $( "td:parent" ).get( 0 ).tagName);
	$( "td:parent" ).fadeTo( 1500, 0.3 );
	</script>

</body>
</html>