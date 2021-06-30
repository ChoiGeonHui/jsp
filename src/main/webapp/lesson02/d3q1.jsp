<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

</head>
<body>
	<form method="post" action="/lesson02/d3q1_1.jsp">
		<div class="container">
			<h1>길이 변환</h1>
			<div class="d-flex">
				<input type="text" name="long" class="form-control col-3">
				<span class="mt-3 ml-2">cm</span>
			</div>
			<div>
			<label for="inch">인치</label><input type="checkbox" name="values" id="inch" value="inch" class="mr-2">
			<label for="yd">야드</label><input type="checkbox" name="values" id="yd" value="yd" class="mr-2">
			<label for="ft">피트</label><input type="checkbox" name="values" id="ft" value="ft" class="mr-2">
			<label for="M">미터</label><input type="checkbox" name="values" id="M" value="M" class="mr-2">
			
			</div>
			<button type="submit" class="btn btn-success">변환하기</button>
			
		</div>
	</form>


</body>
</html>