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

	<p><button type="button" id="test">Test</button></p>
	<div id="log"></div>

	<!-- ����� �� ���ذ� �ʿ� -->
	<script type="text/javascript">
	var me = {
	  	type: "zombie",
	  	test: function( event ) {
		    // Without proxy, `this` would refer to the event target
		    // use event.target to reference that element.
		    var element = event.target;
		    $( element ).css( "background-color", "red" );
		
		    // With proxy, `this` refers to the me object encapsulating
		    // this function.
		    $( "#log" ).append( "Hello " + this.type + "<br>" );
		    $( "#test" ).off( "click", this.test );
	  	}
	};
	
	var you = {
	  	type: "person",
	  	test: function( event ) {
	    	$( "#log" ).append( this.type + " " );
	  	}
	};
	
	// Execute you.test() in the context of the `you` object
	// no matter where it is called
	// i.e. the `this` keyword will refer to `you`
	var youClick = $.proxy( you.test, you );
	
	// attach click handlers to #test
	$( "#test" )
	// this === "zombie"; handler unbound after first click
	.on( "click", $.proxy( me.test, me ) )
	// this === "person"
	.on( "click", youClick )
	// this === "zombie"
	.on( "click", $.proxy( you.test, me ) )
	// this === "<button> element"
	.on( "click", you.test );
	</script>

</body>
</html>