<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>LOGIN</title>
	
	 <link rel="stylesheet" href="./CSS/style.css">

</head>


<body>

	<div id="bg"></div>

	<form action = "login" method = "post">
	
		 <div class="form-field">
		 
			<input type = "text" name = "uid" placeholder="Username" required>
			
		</div>
		
		<div class="form-field">
		
			<input type = "password" name = "pass" placeholder="Password" required>
			
		</div>
		
		<div class="form-field">
		
			<input type="submit" name = "submit" value = "login" class="btn">
			
		</div>
	
	</form>

</body>
</html>