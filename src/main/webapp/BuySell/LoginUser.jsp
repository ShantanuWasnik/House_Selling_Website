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
    <h5>Login Form</h5>
  </div>

  <div class="d-flex justify-content-center ">
    <div class="interface-container">

      <!-- START Interface placeholder -->
      <form class="border border-dark p-4 rounded" action="CheckCred" method="post">
        
        <div class="form-group">
          <label for="exampleInputEmail1">Enter User Name</label>
          <input type="text" name="t1"class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter User Name">
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" name="t2" class="form-control" id="password" placeholder="Password">
        </div>
        <center><button type="submit" class="btn btn-primary">Login</button></center>
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
 