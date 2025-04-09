<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Details</title>
</head>
<body>

    <!-- Display message, if any -->
    <p>${msg}</p>
    <p>${productDetails}</p>

    <div class="product-container">
        <h2>Product Details</h2>

        <form action="#" method="post">

            <!-- Product ID -->
            <label for="productId">Product ID: </label>
            <input type="text" value="${productDetails.pid}" disabled /> <br /> <br />

            <!-- Product Name -->
            <label for="productName">Product Name: </label>
            <input type="text" value="${productDetails.pname}" disabled /> <br /> <br />

            <!-- Product Price -->
            <label for="productPrice">Product Price: </label>
            <input type="text" value="${productDetails.price}" disabled /> <br /> <br />

        </form>
    </div>

    <!-- Display the message again, if necessary -->
    <p>${msg}</p>

    <!-- Links to navigate to other pages -->
    <a href="/get-product-list">Product List</a>
    <a href="/">Home Page</a>
    <a href="/logout">Logout</a>

</body>
</html>
