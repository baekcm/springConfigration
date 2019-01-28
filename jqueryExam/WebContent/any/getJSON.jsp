<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	img {
    	height: 100px;
    	float: left;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div id="images"></div>

	<script type="text/javascript">
	(function() {
	  	var flickerAPI = "http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?";
	  	$.getJSON( flickerAPI, {
	    	tags: "mount rainier",
	    	tagmode: "any",
	    	format: "json"
	  	})
	    .done(function( data ) {
	      	$.each( data.items, function( i, item ) {
	        	$( "<img>" ).attr( "src", item.media.m ).appendTo( "#images" );
	        	if ( i === 3 ) {
	          		return false;
	        	}
	      	});
	    });
	})();
	</script>

</body>
</html>