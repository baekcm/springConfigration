<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	button {
	    display: block;
	    font-size: 12px;
	    width: 100px;
  	}

  	div {
	    float: left;
	    margin: 10px;
	    font-size: 10px;
	    border: 1px solid black;
  	}

  	span {
	    color: blue;
	    font-size:18px;
  	}

  	#inner {
    	color: red;
  	}

  	td {
	    width: 50px;
	    text-align: center;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>
	  	<button>:nth-last-child(even)</button>
	  	<button>:nth-last-child(odd)</button>
	  	<button>:nth-last-child(3n)</button>
	  	<button>:nth-last-child(2)</button>
	</div>
	
	<div>
	  	<button>:nth-last-child(3n+1)</button>
	  	<button>:nth-last-child(3n+2)</button>
	</div>
	
	<div>
	  	<table>
		    <tr>
		    	<td>John</td>
		    </tr>
		    <tr>
		    	<td>Karl</td>
		    </tr>
		    <tr>
		    	<td>Brandon</td>
		    </tr>
		    <tr>
		    	<td>Benjamin</td>
		    </tr>
	  	</table>
	</div>
	
	<div>
	  	<table>
	    	<tr><td>Sam</td></tr>
	  	</table>
	</div>
	
	<div>
	  	<table>
		    <tr>
		    	<td>Glen</td>
		    </tr>
		    <tr>
		    	<td>Tane</td>
		    </tr>
		    <tr>
		    	<td>Ralph</td>
		    </tr>
		    <tr>
		    	<td>David</td>
		    </tr>
		    <tr>
		    	<td>Mike</td>
		    </tr>
		    <tr>
		    	<td>Dan</td>
		    </tr>
	 	</table>
	</div>
	
	<span>tr<span id="inner"></span></span>
	
	<script type="text/javascript">
	$( "button" ).click(function() {
	  	var str = $( this ).text();
	  	$( "tr" ).css( "background", "white" );
	  	$( "tr" + str ).css( "background", "#ff0000" );
	  	$( "#inner" ).text(str);
	});
	</script>

</body>
</html>