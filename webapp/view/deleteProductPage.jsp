<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Product</title>

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

        .confirmation-message {
            font-size: 1.2em;
            margin-top: 20px;
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
        }
    </style>
</head>
<body>

    <!-- Including Header -->
    <jsp:include page="header.jsp" />

    <!-- Delete Product Confirmation -->
    <div class="container">
        <h2>Are you sure you want to delete this product?</h2>
        <div class="confirmation-message">
            <p><strong>Product Name:</strong> ${product.pname}</p>
            <p><strong>Product Price:</strong> ${product.price}</p>
            <form action="/delete-product/${product.pid}" method="GET">
                <input type="submit" value="Yes, Delete Product" />
            </form>
            <a href="/view-all-products">Cancel</a>
        </div>
    </div>

    <!-- Including Footer -->
    <jsp:include page="footer.jsp" />

</body>
</html>
