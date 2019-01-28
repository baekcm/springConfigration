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

	<!-- A 와 B의 비동기(Ajax) 호출을 할 경우 A, B의 프로세스가 모두 완료 후에 C의 프로세스가 진행되어야 하는 경우에 사용. -->
	<script type="text/javascript">
	$.when( $.ajax( "test.jsp" ) ).then(function( data, textStatus, jqXHR ) {
		alert( jqXHR.status ); // Alerts 200
	});
	
	$.when( $.ajax( "/page1.php" ), $.ajax( "/page2.php" ) ).done(function( a1, a2 ) {
		// a1 and a2 are arguments resolved for the page1 and page2 ajax requests, respectively.
		// Each argument is an array with the following structure: [ data, statusText, jqXHR ]
		var data = a1[ 0 ] + a2[ 0 ]; // a1[ 0 ] = "Whip", a2[ 0 ] = " It"
		
		if ( /Whip It/.test( data ) ) {
			alert( "We got what we came for!" );
		}
	});
	</script>

</body>
</html>