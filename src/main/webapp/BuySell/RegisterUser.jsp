<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="mt-5  mb-5">

  <div class="d-flex justify-content-center mb-2">
    <h5>Registration Form</h5>
  </div>

  <div class="d-flex justify-content-center ">
    <div class="interface-container">

      <!-- START Interface placeholder -->
      <form class="border border-dark p-4 rounded" action="SaveUser" method="post">
        <div class="form-group" >
          <label for="name">Name</label>
          <input type="text" name="uname" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Name">
          
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Email address</label>
          <input type="email" name="umail"class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" name="upass" class="form-control" id="password" placeholder="Password">
        </div>
         <div class="form-group">
          <label for="exampleInputPassword1">Confirm Password</label>
          <input type="password" name="ucpass" class="form-control" id="confirm_password" placeholder="Confirm Password">
        </div>
      
        <center><button type="submit" class="btn btn-primary">Register</button></center>
      </form>
      <!-- END Interface placeholder -->

    </div>
  </div>

</div>
</body>
</html>
<style>
.interface-container{
  width:500px;
}
</style>
