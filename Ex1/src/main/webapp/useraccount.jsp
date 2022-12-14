<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>

	<link rel="stylesheet" href="./CSS/useraccount.css">
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
	<div class="page-content page-container" id="page-content">

		<c:forEach var = "cus" items = "${cusDetails}">
		
			<c:set var = "id" value ="${ cus.id }"/>
			<c:set var = "name" value ="${ cus.name }"/>
			<c:set var = "email" value ="${ cus.email }"/>
			<c:set var = "phone" value ="${ cus.phone }"/>
			<c:set var = "username" value ="${ cus.userName }"/>
			<c:set var = "password" value ="${ cus.password }"/>
		
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
    								
    <h6 class="f-w-600">User Name </h6>
    
    <p>${ cus.userName }</p>
                                                                    
    							</div>
    						</div>
    <div class="col-sm-8">
    	<div class="card-block">
    		<h6 class="m-b-20 p-b-5 b-b-default f-w-600">User Information</h6>
    			<div class="row">
    				<div class="details">
    					<p class="m-b-10 f-w-600">Name</p>
    					<h6 class="text-muted f-w-400">${ cus.name }</h6>
    				</div>
    				
				    <div class="details">
				    	<p class="m-b-10 f-w-600">Email</p>
				    	<h6 class="text-muted f-w-400">${ cus.email }</h6>
				    </div>
    			</div>
                                                                    
    <div class="row">
    	<div class="details">
    		<p class="m-b-10 f-w-600">Phone</p>
            <h6 class="text-muted f-w-400">${ cus.phone }</h6>
         </div>
         
         <div class="details">
	         <p class="m-b-10 f-w-600">User ID</p>
	         <h6 class="text-muted f-w-400">${ cus.id }</h6>
         </div>
         
         <div class="details">
              <p class="m-b-10 f-w-600">Password</p>
              <h6 class="text-muted f-w-400">${ cus.password }</h6>
            <br><br>
        </div>
	</div> 
                                                                   

<!--userAccount update -->
	<c:url value = "UpdateHRManager.jsp" var = "hrmupdate">
	
		<c:param name="id" value = "${id}"></c:param>
		<c:param name="name" value = "${name}"></c:param>
		<c:param name="email" value = "${email}"></c:param>
		<c:param name="phone" value = "${phone}"></c:param>
		<c:param name="uname" value = "${username}"></c:param>
		<c:param name="pass" value = "${password}"></c:param>
	
	</c:url>
			
		<br>
        <div class="button">
			<a href="${hrmupdate}"><input type="submit" name="update" value="Update detalis"></a><br><br>
        </div>

        <!--userAccount delete -->
	
	<c:url value = "DeleteHRManager.jsp" var = "hrmdelete">
	
		<c:param name="id" value = "${id}"></c:param>
		<c:param name="name" value = "${name}"></c:param>
		<c:param name="email" value = "${email}"></c:param>
		<c:param name="phone" value = "${phone}"></c:param>
		<c:param name="uname" value = "${username}"></c:param>
		<c:param name="pass" value = "${password}"></c:param>
	
	</c:url>
        <div class="button">
			<a href="${hrmdelete}"><input type="submit" name="delete" value="Delete account"></a>
        </div>
                           </div>
                        
                            </div>
                                                            
                        </div>
                                                        
                    </div>

         
			
                    </div>
                </div>
             </div>
             </c:forEach>
     </div>
 
</body>
</html>