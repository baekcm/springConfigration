<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>live() 함수로 바인딩 된 모든 이벤트들을 제거합니다.</title>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<button id="theone">Does nothing...</button>
	<button id="bind">Bind Click</button>
	<button id="unbind">Unbind Click</button>
	
	<div style="display:none;">Click!</div>

	<!-- .live() 함수로 바인딩 된 모든 이벤트를 .die()로 제거할 수 있습니다. -->
	<!-- 이 함수는 .bind() 함수로 바인딩 된 모든 이벤트를 제거하는 함수인 .unbind() 를 인자없이 호출하는 것과 유사합니다. -->
	<!-- jQuery 1.7에서는, .die() (그리고 보완적인 함수인, .live()) 에 대하여 다루지 않습니다. 대신, .on() 함수로 바인딩된 이벤트를 제거하기 위해 사용되는 .off() 사용 -->
	<!-- 아래의 소스 에러. jQuery 버젼에 따른 on off 사용으로 인해 사용되지 않는것으로 파악됨 -->
	<script type="text/javascript">
		function aClick() { 
			$("div").show().fadeOut("slow"); 
		} 
		
		$("#bind").click(function () { 
			$("#theone").live("click", aClick) 
			.text("Can Click!"); 
		}); 
		
		$("#unbind").click(function () { 
			$("#theone").die("click", aClick) 
			.text("Does nothing..."); 
		}); 
	</script>

</body>
</html>