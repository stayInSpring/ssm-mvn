<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>总人数统计页面</title>
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
<script type="text/javascript">
	$().ready(function(){
		$.ajax({
			type:"POST",
			url:"countAll.action",
			dataType:"json",
			cache:false,
			success:function(data){
				$("#countNum").attr("value",data);
			},
			error:function(error){
				alert("访问异常");
			}
		});
	})
	
</script>
</head>
<body>
	总人数：<input type="text" id="countNum"/>
</body>
</html>