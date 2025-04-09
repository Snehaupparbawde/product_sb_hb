<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Product</title>

    <!-- Internal CSS for responsive design -->
    <style>
        /* General Styles (same as in addProduct.jsp) */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        header {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }

        header .logo {
            font-size: 1.8em;
            font-weight: bold;
        }

        nav {
            background-color: #444;
            padding: 10px;
        }

        .nav-list {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
        }

        .nav-list li {
            margin: 0 15px;
        }

        .nav-list a {
            text-decoration: none;
            color: white;
            font-size: 18px;
            transition: color 0.3s;
        }

        .nav-list a:hover {
            color: #ff6347; /* Tomato color on hover */
            text-decoration: underline;
        }

        .container {
            padding: 20px;
            text-align: center;
        }

        h2 {
            font-size: 2em;
            margin-bottom: 10px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            font-size: 1.2em;
            margin: 10px 0;
        }

        input, textarea {
            padding: 10px;
            margin: 10px 0;
            width: 300px;
            font-size: 1em;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            padding: 10px 20px;
            font-size: 1.2em;
            border-radius: 5px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        /* Responsive Styles (same as in addProduct.jsp) */
        @media (max-width: 768px) {
            .container h2 {
                font-size: 1.5em;
            }

            .container p {
                font-size: 1em;
            }

            input, textarea {
                width: 100%;
            }

            input[type="submit"] {
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <!-- Including Header -->
    <jsp:include page="header.jsp" />

    <!-- Update Product Form -->
    <div class="container">
        <h2>Update Product</h2>
        <form action="/update-product" method="POST">
            <input type="hidden" name="pid" value="${product.pid}" />
            <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="productName" value="${product.pname}" required />
            
            <label for="productPrice">Product Price:</label>
            <input type="number" id="productPrice" name="productPrice" value="${product.price}" required />
            
            <label for="productDescription">Product Description:</label>
            <textarea id="productDescription" name="productDescription" rows="4">${product.description}</textarea>
            
            <input type="submit" value="Update Product" />
        </form>
    </div>

    <!-- Including Footer -->
    <jsp:include page="footer.jsp" />

</body>
</html>
