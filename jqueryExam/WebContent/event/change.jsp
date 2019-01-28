<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	div {
    	color: red;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	
</head>
<body>

	<select name="sweets" multiple="multiple">
	  	<option>Chocolate</option>
	  	<option selected="selected">Candy</option>
	  	<option>Taffy</option>
	  	<option selected="selected">Caramel</option>
	  	<option>Fudge</option>
	  	<option>Cookie</option>
	</select>
	
	<div></div>
	
	<script>
		$("select").change(function () {
		    var str = "";
		    $("select option:selected").each(function() {
				str += $(this).text() + " ";
		    });
		    $("div").text(str);
		}).change();
	</script>
	
	<script>
	$( "input[type='text']" ).change(function() {
  		// Check input( $( this ).val() ) for validity here
	});
	</script>

</body>
</html>