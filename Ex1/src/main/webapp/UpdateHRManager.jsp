<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	 <link rel="stylesheet" href="./CSS/update.css">
</head>

	      <ul>
          <li><a href="#Home">Home</a></li>
          <li><a href="#Salary">Salary</a></li>
          <li><a href="#Department">Department</a></li>
          <li><a href="#Employee">Employee</a></li>
          <li><a href ="#Create HR Coordinator"> Create HR coordinator</a></li>
          <li><a href = "">Change password</a></li>
        
         
          <li><a href="Logout">Logout</a></li>

          <li class="logo"><img src = "./Images/img/zurita.jpg" class="item1"></li>
        
        </ul>
<body>
		<%
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String userName = request.getParameter("uname");
			String password = request.getParameter("pass");
		%>
	
<form action = "HRMUpdate" method = "post">
<div class="page-content page-container" id="page-content">

        <div class="padding">
            <div class="row container d-flex justify-content-center">
    <div class="col-xl-6 col-md-12">
                                                    <div class="card user-card-full">
                                                        <div class="row m-l-0 m-r-0">
                                                            <div class="col-sm-4 bg-c-lite-green user-profile">
                                                                <div class="card-block text-center text-white">
                                                                    <div class="m-b-25">
                                                                        <img src="https://img.icons8.com/bubbles/100/000000/user.png" class="img-radius" alt="User-Profile-Image">
                                                                    </div>
                                                                    <h6 class="f-w-600">User ID </h6>
                                                                    <p><%= id %></p>
                                                                    
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-8">
                                                                <div class="card-block">
                                                                    <h6 class="m-b-20 p-b-5 b-b-default f-w-600">Information</h6>
                                                                    <div class="row">
                                                                        <div class="details">
                                                                            <p class="m-b-10 f-w-600">Name</p>
                                                                            <h6 class="text-muted f-w-400"><input type = "text" name = "name" value = "<%= name %>"></h6>
                                                                        </div>
                                                                           <div class="details">
                                                                            <p class="m-b-10 f-w-600">User ID</p>
                                                                            <h6 class="text-muted f-w-400"><input type="text" name="cusid" value="<%= id %>" readonly></h6>
                                                                        </div>
                                                                        <div class="details">
                                                                            <p class="m-b-10 f-w-600">Email</p>
                                                                            <h6 class="text-muted f-w-400"><input type = "text" name = "email" value = "<%= email %>"></h6>
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <div class="row">
                                                                        <div class="details">
                                                                            <p class="m-b-10 f-w-600">Phone</p>
                <h6 class="text-muted f-w-400"><input type = "text" name = "phone" value = "<%= phone %>"></h6>
                </div>
                <div class="details">
                <p class="m-b-10 f-w-600">User Name</p>
                <h6 class="text-muted f-w-400"><input type = "text" name = "uname" value = "<%= userName %>"></h6>
                </div>
                <div class="details">
                <p class="m-b-10 f-w-600">Password</p>
            <h6 class="text-muted f-w-400"><input type = "password" name = "pass" value = "<%= password %>"></h6>
            <br><br>
        </div>
    </div> 
                                                                  
        <div class="button">
			<input type="submit" name="submit" value="Update account">
        </div>

                            </div>

                                                                
                            </div>
                                                            
                        </div>
                                                        
                    </div>

         
			
                    </div>
                </div>
             </div>
           
        </div>
       </form>
</html>