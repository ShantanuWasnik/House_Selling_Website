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
    <h5>Enter The Details Of Your House</h5>
  </div>

  <div class="d-flex justify-content-center ">
    <div class="interface-container">

      <!-- START Interface placeholder -->
      <form class="border border-dark p-4 rounded" action="SaveInfoSeller" enctype="multipart/form-data" method="post">
        <div class="form-group" >
          <label for="name">Enter Your Name</label>
          <input type="text" name="uname" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Name">
          
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Enter Your Contact Details</label>
          <input type="number" name="unumber" class="form-control" id="unmber"  placeholder="Enter Contact Number">
        </div>
        <div class="form-group">
          <label for="price">Enter Your Price</label>
          <!-- Modified input type to number -->
          <input type="number" name="uprice" class="form-control" id="price" placeholder="Price">
        </div>
         <div class="form-group">
          <label for="img_upload">Upload Photo</label>
          <input type="file" name="file" class="form-control" id="img" placeholder="Upload Image">
        </div>
      
        <center><button type="submit" class="btn btn-primary">Register for Sell</button></center>
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
 