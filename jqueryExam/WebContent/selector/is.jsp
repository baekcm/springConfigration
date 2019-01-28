<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	div {
	    width: 60px;
	    height: 60px;
	    margin: 5px;
	    float: left;
	    border: 4px outset;
	    background: green;
	    text-align: center;
	    font-weight: bolder;
	    cursor: pointer;
  	}

  	.blue {
    	background: blue;
  	}

  	.red {
    	background: red;
  	}

  	span {
    	color: white;
    	font-size: 16px;
  	}

  	p {
	    color: red;
	    font-weight: bolder;
	    background: yellow;
	    margin: 3px;
	    clear: left;
	    display: none;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div></div>
	<div class="blue"></div>
	<div></div>
	<div class="red"></div>
	<div><br/><span>Peter</span></div>
	<div class="blue"></div>
	<p>&nbsp;</p>

	<!-- is : 선택한 요소 중 하나가 is(selector Element) 일치하는지 확인. 결과값은 true/false -->
	<script type="text/javascript">
	$( "div" ).one( "click", function() {
	  	if ( $( this ).is( ":first-child" ) ) {
	    	$( "p" ).text( "It's the first div." );
	  	} else if ( $( this ).is( ".blue,.red" ) ) {
	    	$( "p" ).text( "It's a blue or red div." );
	  	} else if ( $( this ).is( ":contains('Peter')" ) ) {
	    	$( "p" ).text( "It's Peter!" );
	  	} else {
	    	$( "p" ).html( "It's nothing <em>special</em>." );
	  	}

  		$( "p" ).hide().slideDown( "slow" );
  		
	  	$( this ).css({
	    	"border-style": "inset",
	    	cursor: "default"
  		});
	});

</script>

</body>
</html>