<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Seller List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <div class="container mt-5">
        <h3 class="text-center">Seller Details</h3>
        <table class="table table-bordered">
            <thead class="thead-light bg-primary text-white">
                <tr>
                    <th>UID</th>
                    <th>Name</th>
                    <th>Contact Number</th>
                    <th>Price</th>
                    <th>Images</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="seller" items="${shan}">
                    <tr>
                        <td>${seller.uid}</td> <!-- Accessing properties of SellerModel -->
                        <td>${seller.uname}</td>
                        <td>${seller.unumber}</td>
                        <td>${seller.uprice}</td>
                        <td>
                         <img src="/images/${seller.filename}" height="100px" width="200px">
                        </td>
                        <td>
                            <a href="/Edit/${seller.uid}" class="btn btn-primary" >Edit</a> |
                            <a href="del/${seller.uid}" class="btn btn-danger">Delete</a>
                            
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
 