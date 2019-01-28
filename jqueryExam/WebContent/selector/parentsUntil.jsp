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

	<ul class="level-1 yes">
	  	<li class="item-i">I</li>
	  	<li class="item-ii">II
		    <ul class="level-2 yes">
		      	<li class="item-a">A</li>
		      	<li class="item-b">B
			        <ul class="level-3">
			          	<li class="item-1">1</li>
			          	<li class="item-2">2</li>
			          	<li class="item-3">3</li>
			        </ul>
		      	</li>
		      	<li class="item-c">C</li>
		    </ul>
	  	</li>
	  	<li class="item-iii">III</li>
	</ul>
	
	<script type="text/javascript">
	$( "li.item-a" )
	.parentsUntil( ".level-1" )
	.css( "background-color", "red" );
	
	$( "li.item-2" )
	.parentsUntil( $( "ul.level-1" ), ".yes" )
	.css( "border", "3px solid green" );
	</script>

</body>
</html>