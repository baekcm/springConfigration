<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div id="log"></div>

	<script type="text/javascript">
	var object1 = {
	  	apple: 0,
	  	banana: { weight: 52, price: 100 },
	  	cherry: 97
	};
	
	var object2 = {
	  	banana: { price: 200 },
	  	durian: 100
	};
	
	// Merge object2 into object1
	$.extend( object1, object2 );
	
	// Assuming JSON.stringify - not available in IE<8
	$( "#log" ).append( JSON.stringify( object1 ) );
	</script>
	
	<br><br>
	<div id="log"></div>
	
	<!-- 기존 객체를 참조하면서 중복되는 키 값은 덮어 쓰고 없는 키 값은 새로 생성해서 합친다. -->
	<!-- $.extend({참/거짓}, 오브젝트1, 오브젝트2); : 오브젝트1 에 오브젝트2를 덮어씌운다.(오브젝트2를 오브젝트1에 합친다.) -->
	<script type="text/javascript">
	var defaults = { validate: false, limit: 5, name: "foo" };
	var options = { validate: true, name: "bar" };
	
	// Merge defaults and options, without modifying defaults
	var settings = $.extend( {}, defaults, options );
	
	// Assuming JSON.stringify - not available in IE<8
	$( "#log" ).append( "<div><b>defaults -- </b>" + JSON.stringify( defaults ) + "</div>" );
	$( "#log" ).append( "<div><b>options -- </b>" + JSON.stringify( options ) + "</div>" );
	$( "#log" ).append( "<div><b>settings -- </b>" + JSON.stringify( settings ) + "</div>" );
	</script>

</body>
</html>