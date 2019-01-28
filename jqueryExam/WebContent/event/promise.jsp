<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	div {
	    height: 50px;
	    width: 50px;
	    float: left;
	    margin-right: 10px;
	    display: none;
	    background-color: #090;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<button>Go</button>
	<p>Ready...</p>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	
	<!-- jQuery 1.5 이후 버전에서부터 포함된 기능으로 Ajax 같은 비동기 함수를 핸들링하기 위한 도구. -->
	<!-- ajax로 많은 양의 데이터를 불러올 때, 데이터를 다 불러오지 않았음에도 불구하고 그 다음 줄을 실행해버린다. -->
	<!-- 데이터를 다 불러오고 그 다음에 실행시켜야 하는 액션이 있다면, primise를 이용 -->
	<script type="text/javascript">
	$( "button" ).on( "click", function() {
	  	$( "p" ).append( "Started..." );
	
	  	$( "div" ).each(function( i ) {
	    	$( this ).fadeIn().fadeOut( 1000 * ( i + 1 ) );
	  	});
	
	  	$( "div" ).promise().done(function() {
	    	$( "p" ).append( " Finished! " );
	  	});
	});
	</script>

</body>
</html>