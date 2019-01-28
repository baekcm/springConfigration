<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>detach() / remove() / empty() ��뿡 ���̰� �ִ�.</title>

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

	<!-- detach() : ���� ��Ҹ� ���� �����Ѵ�. -->
	<!-- ���ŵ� ��Ұ� jQuery ������ ���·� �����ǰ�, ���ŵ� ����� ������, �̺�Ʈ�� ���ŵ��� �ʰ� �����ȴ�. -->
	<!-- ȭ�鿡�� �����ߴ� ���� ������� ��� ���ȴ�. -->
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
	
	<!-- remove() : ���� ��Ҹ� ���� �����Ѵ�. -->
	<!-- ���ŵ� ��Ұ� jQuery ������ ���·� �����ǳ�, ���ŵ� ��� �� ���� ��ҵ��� ������, �̺�Ʈ�� ���� ���ŵȴ�. -->
	
	<!-- empty() : ���� ��ҵ�(�ؽ�Ʈ ����)�� �����Ѵ�. -->
	<!-- �ڽ� ��ҵ��� ������, �̺�Ʈ�� �Բ� ���ŵȴ�. detach �� �޸�, ���ŵ� ��Ұ� �����ͷ� �������� �ʴ´�. -->

</body>
</html>