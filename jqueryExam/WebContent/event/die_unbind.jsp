<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>live() �Լ��� ���ε� �� ��� �̺�Ʈ���� �����մϴ�.</title>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<button id="theone">Does nothing...</button>
	<button id="bind">Bind Click</button>
	<button id="unbind">Unbind Click</button>
	
	<div style="display:none;">Click!</div>

	<!-- .live() �Լ��� ���ε� �� ��� �̺�Ʈ�� .die()�� ������ �� �ֽ��ϴ�. -->
	<!-- �� �Լ��� .bind() �Լ��� ���ε� �� ��� �̺�Ʈ�� �����ϴ� �Լ��� .unbind() �� ���ھ��� ȣ���ϴ� �Ͱ� �����մϴ�. -->
	<!-- jQuery 1.7������, .die() (�׸��� �������� �Լ���, .live()) �� ���Ͽ� �ٷ��� �ʽ��ϴ�. ���, .on() �Լ��� ���ε��� �̺�Ʈ�� �����ϱ� ���� ���Ǵ� .off() ��� -->
	<!-- �Ʒ��� �ҽ� ����. jQuery ������ ���� on off ������� ���� ������ �ʴ°����� �ľǵ� -->
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