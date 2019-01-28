<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>detach() / remove() / empty() 사용에 차이가 있다.</title>

	<style>
  	p {
    	background: yellow;
    	margin: 6px 0;
  	}
  	p.off {
    	background: black;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<p>Hello</p>
	how are
	<p>you?</p>
	<button>Attach/detach paragraphs</button>

	<!-- detach() : 하위 요소를 전부 제거한다. -->
	<!-- 제거된 요소가 jQuery 데이터 형태로 유지되고, 제거된 요소의 데이터, 이벤트도 제거되지 않고 유지된다. -->
	<!-- 화면에서 제거했다 추후 재삽입할 경우 사용된다. -->
	<script>
		$( "p" ).click(function() {
		  	$( this ).toggleClass( "off" );
		});
		
		var p;
		
		$( "button" ).click(function() {
		  	if ( p ) {
		    	p.appendTo( "body" );
		    	p = null;
		  	} else {
		    	p = $( "p" ).detach();
		  	}
		});
	</script>
	
	<!-- remove() : 하위 요소를 전부 제거한다. -->
	<!-- 제거된 요소가 jQuery 데이터 형태로 유지되나, 제거된 요소 및 하위 요소들의 데이터, 이벤트는 전부 제거된다. -->
	
	<!-- empty() : 하위 요소들(텍스트 포함)을 제거한다. -->
	<!-- 자식 요소들의 데이터, 이벤트도 함께 제거된다. detach 와 달리, 제거된 요소가 데이터로 유지되지 않는다. -->

</body>
</html>