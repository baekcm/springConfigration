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
	<button>추가</button>
	<!-- bind : 버튼을 통해 추가된 li 에 대해서는 click event 가 동작하지 않는다. -->
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
		
		//li 추가 후 event 발생을 위해서는 해결방법은 아래와 같이 unbind(이벤트 삭제) 후 다시 bind(이벤트 등록) 해줘야 한다.
		/*
		$("button").click(function(){
			$("#con").append("<li>num"+ (i++) +"</li>");
			$("#con li").unbind();
			$("#con li").bind("click", function(){
				alert($(this).text());
			});
		});
		*/
		
		//이를 버블링으로 해결하는 경우 아래와 같이 한다. 
		//추가적인것 없이 body 에 이벤트를 등록하여 버블링을 이용하면 된다.
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
	
	<!-- delegate : 하나의 이벤트로 하위 이벤트 처리를 좀 더 쉽게 사용 가능. 이벤트의 this가 이벤트 발생시킨 항목을 카리킨다 -->
	<!-- delegate : e.target 이 아닌 (#con li) 를 사용한다. $(this) => (#con li) -->
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
	
	<!-- bind 의 경우 생성되지 않은 엘리먼트에 이벤트를 걸 수 없다. -->
	<!-- live 는 생성되지 않은 엘리먼트에 이벤트를 걸 수 있다. 그러므로 동적으로 내용이 추가되더라도 이벤트를 걸 수 있다. -->
	<!-- 하지만, jQuery 1.7 이후부터 on 으로 통합하여 사용한다. on(event, selector, function)  -->
	
</body>
</html>