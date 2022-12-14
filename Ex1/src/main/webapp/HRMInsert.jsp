<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<link rel="stylesheet" href="./CSS/insertstyle.css">
	
</head>

     <ul>
         <li><a href="#Home">Home</a></li>
         <li><a href="#Salary">Salary</a></li>
         <li><a href="#Department">Department</a></li>
         <li><a href="#Employee">Employee</a></li>
         <li><a href="Logout">Logout</a></li>

         <li class="logo"><img src = "./Images/img/zurita.jpg" class="item1"></li>
        
       </ul>
<body>
	<form action="HRMInsert" method="post">
	<div class="form">
            
            
            <div class="subtitle">Create HR Coordinator Account</div>
            
            <div class="input-container ic1">
              <input id="name" class="input" type="text" placeholder=" " name = "name"/>
              <div class="cut"></div>
              <label for="name" class="placeholder">Name</label>
            </div>

            <div class="input-container ic2">
              <input id="email" class="input" type="text" placeholder=" " name = "email"/>
              <div class="cut"></div>
              <label for="email" class="placeholder">E - mail</label>
            </div>
            <div class="input-container ic3">
                <input id="phone" class="input" type="text" placeholder=" " name = "phone"/>
                <div class="cut"></div>
                <label for="phone" class="placeholder">Phone</label>
              </div>
            <div class="input-container ic4">
		         <input id="username" class="input" type="text" placeholder=" " name = "username"/>
                <div class="cut"></div>
                <label for="username" class="placeholder">User Name</label>
            </div>
            <div class="input-container ic5">
                <input id="password" class="input" type="text" placeholder=" " name = "password"/>
                <div class="cut"></div>
                <label for="password" class="placeholder">Password</label>
              </div>


            <button type="submit" class="submit" name = "sublit ">Create HR Manager</button>
          
          </div>
  </form>
</body>
</html>