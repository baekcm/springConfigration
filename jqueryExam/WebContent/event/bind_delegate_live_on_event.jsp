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

	<ul id="con">
		<li>num1</li>
		<li>num2</li>
		<li>num3</li>
		<li>num4</li>
		<li>num5</li>
	</ul>
	<button>�߰�</button>
	<!-- bind : ��ư�� ���� �߰��� li �� ���ؼ��� click event �� �������� �ʴ´�. -->
	<script type="text/javascript">
		/*
		var i=6;
		$("#con li").bind("click", function(){
			alert($(this).text());
		});
		
		$("button").click(function(){
			$("#con").append("<li>num"+ (i++) +"</li>");
		});
		*/
		
		//li �߰� �� event �߻��� ���ؼ��� �ذ����� �Ʒ��� ���� unbind(�̺�Ʈ ����) �� �ٽ� bind(�̺�Ʈ ���) ����� �Ѵ�.
		/*
		$("button").click(function(){
			$("#con").append("<li>num"+ (i++) +"</li>");
			$("#con li").unbind();
			$("#con li").bind("click", function(){
				alert($(this).text());
			});
		});
		*/
		
		//�̸� �������� �ذ��ϴ� ��� �Ʒ��� ���� �Ѵ�. 
		//�߰����ΰ� ���� body �� �̺�Ʈ�� ����Ͽ� ������ �̿��ϸ� �ȴ�.
		/*
		var i=6;
		$("body").bind("click", function(e){
			if(e.target.tagName == "LI"){
				alert($(e.target).text());
			}
		});
		$("button").click(function(){
			$("#con").append("<li>num"+ (i++) +"</li>");
		});
		*/
	</script>
	
	<!-- delegate : �ϳ��� �̺�Ʈ�� ���� �̺�Ʈ ó���� �� �� ���� ��� ����. �̺�Ʈ�� this�� �̺�Ʈ �߻���Ų �׸��� ī��Ų�� -->
	<!-- delegate : e.target �� �ƴ� (#con li) �� ����Ѵ�. $(this) => (#con li) -->
	<script type="text/javascript">
		//delegate(selector, event, function)
		var i=6;
		$("body").delegate("#con li", "click", function(){
			alert($(this).text());
		});
		$("button").click(function(){
			$("#con").append("<li>num"+ (i++) +"</li>");
		});
	</script>
	
	<!-- bind �� ��� �������� ���� ������Ʈ�� �̺�Ʈ�� �� �� ����. -->
	<!-- live �� �������� ���� ������Ʈ�� �̺�Ʈ�� �� �� �ִ�. �׷��Ƿ� �������� ������ �߰��Ǵ��� �̺�Ʈ�� �� �� �ִ�. -->
	<!-- ������, jQuery 1.7 ���ĺ��� on ���� �����Ͽ� ����Ѵ�. on(event, selector, function)  -->
	
</body>
</html>