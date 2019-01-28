<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	p {
    	color: red;
  	}
  	
  	body {
    	font-size: 16px;
  	}

  	ul {
	    float: left;
	    margin: 0 30px;
	    color: blue;
  	}

  	#results {
    	color: red;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<p>
		<b>Values: </b>
	</p>
	<form>
	  	<input type="text" name="name" value="John">
	  	<input type="text" name="password" value="password">
	  	<input type="text" name="url" value="http://ejohn.org/">
	</form>
	
	<br><br>
	<ul>
	  	<li>First</li>
	  	<li>Second</li>
	  	<li>Third</li>
	  	<li>Fourth</li>
	  	<li>Fifth</li>
	</ul>
	<ul id="results"></ul>

	<script type="text/javascript">
	$( "p" ).append( $( "input" )
	.map(function() {
	    return $( this ).val();
	})
	.get()
	.join( ", " ) );
	
	var mappedItems = $( "li" ).map(function( index ) {
		
		var replacement = $( "<li>" ).text( $( this ).text() ).get( 0 );
		console.log("replacement : "+ $( this ).text());
		
		if ( index === 0 ) {
		    // Make the first item all caps
		    $( replacement ).text( $( replacement ).text().toUpperCase() );
		} else if ( index === 1 || index === 3 ) {
		    // Delete the second and fourth items
		    replacement = null;
		} else if ( index === 2 ) {
		    // Make two of the third item and add some text
		    replacement = [ replacement, $( "<li>" ).get( 0 ) ];
		    $( replacement[ 0 ] ).append( "<b> - A</b>" );
		    $( replacement[ 1 ] ).append( "Extra <b> - B</b>" );
		}
		
		// Replacement will be a dom element, null,
		// or an array of dom elements
		return replacement;
	});
	
	$( "#results" ).append( mappedItems );
	</script>

</body>
</html>