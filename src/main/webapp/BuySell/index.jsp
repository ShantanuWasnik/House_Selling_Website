<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>

    <style>
      html, body {
        margin: 0;
        padding: 0;
        width: 100%;
        height: 100%;
        overflow: hidden; /* Disable vertical scrolling */
      }
      .container {
        width: 100%;
        height: 100%;
      }
      img {
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover; /* Ensures the image scales properly */
      }
    </style>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
      <a class="navbar-brand text-white" href="#">BuySellWebsite</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link text-white mx-3" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-white mx-3" href="#">About Us</a>
          </li> 
          <li class="nav-item">
            <a class="nav-link text-white mx-3" href="#">Contact Us</a>
          </li> 
          <li class="nav-item">
            <a class="nav-link text-white mx-3" href="SellPro">Sell</a>
          </li>  
          <li class="nav-item">
            <a class="nav-link text-white mx-3" href="/Buyerdisp">Buy</a>
          </li> 
          <li class="nav-item">
            <a class="nav-link text-white mx-3" href="RegisterUser">Register Yourself</a>
          </li> 
        </ul>
        <% HttpSession s1 = request.getSession();
           String x = (String) s1.getAttribute("temp");  
           if (x == null) { %>
          <div>
            <a class="nav-link text-white" href="LoginUser">Login</a>
          </div> 
        <% } else { %> 
          <a class="nav-link text-white" href="Logout">Logout</a>   
        <% } %>
      </div>
    </nav>
    <div class="container">
      <img src="/images/home3.jpg" alt="Home Image">
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
