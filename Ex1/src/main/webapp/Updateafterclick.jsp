<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String userName = request.getParameter("uname");
			String password = request.getParameter("pass");
		%>

	        <form action = "updateclick" method = "post">
         <div class="form">
    
            <div class="subtitle">Create Employee Account</div>
            <div class="input-container ic1">
              <input id="firstname" class="input" type="text" placeholder=" " name="Firstname" value = "<%out.println(id);%>"/>
              <div class="cut"></div>
              <label for="firstname" class="placeholder">ID</label>
            </div>
            <div class="input-container ic2">
              <input id="lastname" class="input" type="text" placeholder=" " name= "Lastname" value = "<%out.println(name);%>"/>
              <div class="cut"></div>
              <label for="lastname" class="placeholder">Name</label>
            </div>
            <div class="input-container ic3">
                <input id="email" class="input" type="text" placeholder=" " name = "empid" value = "<%out.println(email);%>"/>
                <div class="cut"></div>
                <label for="email" class="placeholder">Email</label>
              </div>
            <div class="input-container ic4">
              <input id="email" class="input" type="text" placeholder=" " name = "Email" value = "<%out.println(phone);%>"/>
              <div class="cut"></div>
              <label for="email" class="placeholder">Phone</label>
            </div>
            <div class="input-container ic5">
                <input id="email" class="input" type="text" placeholder="" name = "Address"  value = "<%out.println(userName);%>" />
                <div class="cut"></div>
                <label for="email" class="placeholder">Name</label>
              </div>
              <div class="input-container ic7">
                <input id="email" class="input" type="text" placeholder=""  name = "Number"  />
                <div class="cut"></div>
                <label for="email" class="placeholder">Number</label>
              </div>
               <div class="input-container ic6">
                <input id="email" class="input" type="text" placeholder="" name = "Department"  value = "<%out.println(password);%>"/>
                <div class="cut"></div>
                <label for="email" class="placeholder">Password</label>
              </div>

            <button type="submit" class="submit" value = "add_employee">submit</button>
            
          </div>
         </form>

</body>
</html>