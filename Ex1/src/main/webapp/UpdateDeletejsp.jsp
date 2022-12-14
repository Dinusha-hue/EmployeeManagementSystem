<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <table class="styled-table">
            <thead>
                <tr>
                    <th>HR id</th>
                    <th>HR Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>User Name</th>
                    <th>Password</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
            </thead>
            
            <tbody>
               <c:forEach var="cus" items="${ cusDetails }">

         <tr>
                    <td>${cus.getId()}</td>
                    <td>${cus.getName()}</td>
                    <td>${cus.getEmail()} </td>
                    <td>${cus.getPhone()}</td>               
                    <td>${cus.getUsername()}</td>
                    <td>${cus.getPassword()}</td>
                   
                <td>
                    <form action = "Updateafterclick.jsp" method = "post">
                    <input type="submit" name ="update" value = "Update">
                    <input type = "hidden" name = "cusid" value = "${cus.getId()}">
                    <input type = "hidden" name = "name" value = "${cus.getName()}">
                    <input type = "hidden" name = "email" value = "${cus.getEmail()}">
                    <input type = "hidden" name = "phone" value = "${cus.getPhone()}">
                    <input type = "hidden" name = "username" value = "${cus.getUsername()}">             
                    <input type = "hidden" name = "password" value = "${cus.getPassword()}">
                    </form>
               </td>
                  <td>  <form action= "HRMDelete" method = "post"><input type = "submit" name = "delete" value = "Delete">
                  			<input type = "hidden" name = "empid" value = "${cus.getId()}">
                  
                  		</form>
                  	</td>
                    
	
	
                </tr>  
            </c:forEach>	
	


               
            </tbody>
       </table>
       <%-- <form action = "insert" method = "post">
        <div class="form">
    
            <div class="subtitle">Create Employee Account</div>
            <div class="input-container ic1">
              <input id="firstname" class="input" type="text" placeholder=" " name="Firstname"/>
              <div class="cut"></div>
              <label for="firstname" class="placeholder">First name</label>
            </div>
            <div class="input-container ic2">
              <input id="lastname" class="input" type="text" placeholder=" " name= "Last_name" />
              <div class="cut"></div>
              <label for="lastname" class="placeholder">Last name</label>
            </div>
            <div class="input-container ic3">
                <input id="email" class="input" type="text" placeholder=" " name = "empid"/>
                <div class="cut"></div>
                <label for="email" class="placeholder">ID number</label>
              </div>
            <div class="input-container ic4">
              <input id="email" class="input" type="text" placeholder=" " name = "Email"/>
              <div class="cut"></div>
              <label for="email" class="placeholder">E - mail</label>
            </div>
            <div class="input-container ic5">
                <input id="email" class="input" type="text" placeholder="" name = "Address" />
                <div class="cut"></div>
                <label for="email" class="placeholder">Address</label>
              </div>
              <div class="input-container ic7">
                <input id="email" class="input" type="text" placeholder=""  name = "Number"/>
                <div class="cut"></div>
                <label for="email" class="placeholder">Number</label>
              </div>
               <div class="input-container ic6">
                <input id="email" class="input" type="text" placeholder="" name = "Department"/>
                <div class="cut"></div>
                <label for="email" class="placeholder">Department</label>
              </div>

            <button type="submit" class="submit" value = "add_employee">submit</button>
            
          </div>
         </form>--%>

</body>
</html>