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

	<button>Ŭ��</button>

	<!-- jQuery�� "$" ��ȣ��  JQuery�� �ٷΰ��� ��ȣ�� ����ϰ� �ִ�. -->
	<!-- ������ �ٸ� �ڹٽ�ũ��Ʈ �����ӿ�ũ������ "$" ��ȣ�� ����� ��찡 ���� ��쿡 ��ġ�� �Ǿ� ����� ������ ���� �ʴ´� -->
	<!-- �̶� jQuery�� �ٷΰ��� ��ȣ�� �����ϰų� �ٸ� ��ȣ�� ���ڷ� ������ �� ��� -->
	<script type="text/javascript">
	$.noConflict(); // jQuery �ٷΰ��� ��ȣ ����
	//var jq = $.noConflict(); // jQuery �ٷΰ��� ��ȣ ����

	jQuery("button").click(function(){ // jq("button").click(function(){
		alert();
	});
	
	</script>

</body>
</html>