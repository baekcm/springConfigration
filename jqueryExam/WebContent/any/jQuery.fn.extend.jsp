<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	label {
    	display: block;
    	margin: .5em;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<label><input type="checkbox" name="foo"> Foo</label>
	<label><input type="checkbox" name="bar"> Bar</label>

	<script>
	jQuery.fn.extend({
	  	check: function() {
	    	return this.each(function() {
	      		this.checked = true;
	    	});
	  	},
	
	  	uncheck: function() {
	    	return this.each(function() {
	      		this.checked = false;
	    	});
	  	}
	});
	
	// Use the newly created .check() method
	$( "input[type='checkbox']" ).check();
	</script>

</body>
</html>