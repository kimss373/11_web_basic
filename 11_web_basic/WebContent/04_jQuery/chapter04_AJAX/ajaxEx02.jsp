<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax 기초</title>
<script src="04_jQuery/js/jquery-3.6.1.min.js"></script>
<script>

	/*
	
		# AJAX(Asynchronous Javascript And XML)
		
		- 웹 페이지 전체를 다시 로딩하지 않고도, 웹 페이지의 일부분만을 갱신하여 사용할 수 있다.
		- 페이지의 전환 없이 서버와 통신하여, 그 결과를 웹 페이지의 일부분에만 표시할 수 있다.
		- 서버에서 처리가 완료될때까지 기다리지 않고 페이지 이동 없이 다른 프로세스를 진행할 수 있다.
		- 서버와 주고받을 수 있는 데이터 형식은 JSON,XML,HTML,텍스트 파일 등이 있다.
		
			[ 형식 ]
		
		 $.ajax({
			 url: "",
			 type: "",
			 async:"",
			 cache: ,
			 data: "",
			 dataType: "",
			 success: function(data, status , xhr){
			 },
			 error: function(xhr, status , errorThrown){
			 },
			 complete : function(xhr, status){
			 }
			 
		});
	
	1) url      : 요청이 전송될 URL주소를 작성한다.
	2) type     : 데이터 전송방식( GET 또는 POST )을 작성한다.
	3) async	: true가 기본이며 비동기식으로 동작한다. false로 설정하게되면 동기방식으로 동작한다.
	4) cache    : 요청 페이지의 캐시 여부(false 또는 true)를 작성한다. 
	5) data     : 서버에 전송하고 싶은 데이터를 작성한다.
	6) datatype : 서버에서 받아올 데이터를 어떤 형태(xml, json, html, script)로 해석할 것인지를 작성한다.
	7) success  : Ajax 통신에 성공했을 때 실행되는 이벤트
	8) error    : Ajax 통신에 실패했을 때 실행되는 이벤트
	9) complete : Ajax 통신의 성공 및 실패와 상관없이 반드시 실행되는 이벤트
	
	*/

	$().ready(function(){
		
		$("#ajaxExBtn").click(function(){
			
			var param = {
				"id" : $("#id").val() ,
				"isPC" : true
			}
			
			$.ajax({
				url : "/11_web_basic/ajaxEx02",
				type : "post",
				//data : "id="+$("#id").val()+"&isPC="+true,
				data : param,
				success : function() {

					var checkCnt = $("#checkCnt").text();
					checkCnt++;
					$("#checkCnt").text(checkCnt);
					
				}	
			
			});
			
			
		});
		
	})
</script>
</head>
<body>
	<form>
		<p><img src="04_jQuery/images/spring.PNG" width="200" height="200"> </p>
		<p>전송횟수 : <span id="checkCnt">1</span> </p>
		<p>
			id : <input type="text" id="id"> <input type="button" id="ajaxExBtn" value="중복확인(비동기통신)">
		</p>
	</form>
</body>
</html>