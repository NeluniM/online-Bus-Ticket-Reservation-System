<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> SeatReserve | Payment Details</title>
    <style>
       * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html, body {
            height: 100%; /* Ensure the body takes full viewport height */
        }

        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            color: #333;
            animation: fadeIn 1s ease-in forwards;
        }
        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        /* Container */
        .container {
            width: 90%;
            margin: 0 auto;
            max-width: 1200px;
        }

        /* Header Styles */
        header {
            background-color: #333;
            color: #fff;
            padding: 10px 0;
            width: 100%;
            position: relative;
            z-index: 10;
        }

        header h1 {
            float: left;
            margin-left: 20px;
        }

        header nav ul {
            list-style: none;
            float: right;
            margin-right: 20px;
        }

        header nav ul li {
            display: inline;
            margin-left: 20px;
        }

        header nav ul li a {
            color: #fff;
            text-decoration: none;
        }

        header nav ul li a:hover {
            text-decoration: underline;
        }

        /* Hero Section Styles */
        .hero {
            background: url('css/Bus.jpg') no-repeat center center/cover;
            min-height: 100vh; /* Ensure the hero section covers full viewport height */
            color: #fff;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        
                .he::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Overlay for better text readability */
            z-index: 1;
        }

        .hero h2 {
            font-size: 3rem;
            margin-bottom: 10px;
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 20px;
        }

        .hero .btn {
            background-color: #ff6b6b;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }

        .hero .btn:hover {
            background-color: #ff4a4a;
        }


        table {
            width: 100%;
            max-width: 800px;
            background-color: #fff;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            color: #333;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        td {
            font-size: 16px;
            color: #555;
        }

        .table-container {
            width: 100%;
            max-width: 800px;
            margin-top: 20px;
        }
        input[type="button"] {
            width: 100%;
            background-color: #3a7cdf;
            color: white;
            padding: 10px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }

        /* Hover effect */
        input[type="button"]:hover {
            background-color: #447cb1;
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
        }

        /* Active (click) effect */
        input[type="button"]:active {
            background-color: #41cdae;
            box-shadow: 0 3px 4px rgba(0, 0, 0, 0.2);
        }
         /* Footer Section */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px 0;
            width: 100%;
            position: relative;
            bottom: 0;
            z-index: 10;
        }

        footer p {
            margin-bottom: 10px;
        }

        footer .social-links {
            list-style: none;
            display: flex;
            justify-content: center;
        }

        footer .social-links li {
            margin: 0 10px;
        }

        footer .social-links li a {
            color: white;
            text-decoration: none;
        }

        footer .social-links li a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            header h1 {
                float: none;
                text-align: center;
                margin-bottom: 10px;
            }

            header nav ul {
                float: none;
                text-align: center;
                margin: 0;
            }

            header nav ul li {
                display: block;
                margin: 10px 0;
            }

            .hero h2 {
                font-size: 2rem;
            }

            .hero p {
                font-size: 1rem;
            }

            .login-section form {
                padding: 20px;
            }
        }
    </style>
    <title>SeatReserve | Payment</title>
</head>
<body>
<header>
        <div class="container">
            <h1>SeatReserve</h1>
            <nav>
                <ul>
                    <li><a href="homepage.jsp">Home</a></li>
                    <li><a href="log.jsp">Book a Ticket</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactus.jsp">Contact</a></li>
                    <li><a href="logoutServlet">Logout</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <section class="hero">
    <h1>Passenger Payment Details</h1>

    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>Passenger ID</th>
                    <th>Passenger Name</th>
                    <th>Card Number</th>
                    <th>CVV Code</th>
                    <th>Expire Date</th>
                    <th>Email</th>
                    <th>Payment Amount</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="pass" items="${passDetails}">
                
                   <c:set var="pid" value="${pass.pid}"/>
                   <c:set var="passenger_name" value="${pass.passenger_name}"/>
                   <c:set var="card_number" value="${pass.card_number}"/>
                   <c:set var="CVV_code" value="${pass.CVV_code}"/>
                   <c:set var="expire_date" value="${pass.expire_date}"/>
                   <c:set var="email" value="${pass.email}"/>
                   <c:set var="payment_amount" value="${pass.payment_amount}"/>
                
                    <tr>
                        <td><c:out value="${pass.pid}"/></td>
                        <td><c:out value="${pass.passenger_name}"/></td>
                        <td><c:out value="${pass.card_number}"/></td>
                        <td><c:out value="${pass.CVV_code}"/></td>
                        <td><c:out value="${pass.expire_date}"/></td>
                        <td><c:out value="${pass.email}"/></td>
                        <td><c:out value="${pass.payment_amount}"/></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
  
  <div style="display: flex; justify-content: center; margin-top: 20px;"> 
    <c:url value="UpdatePayment.jsp" var="payupdate">
      <c:param name="pid" value="${pid}"/>
      <c:param name="passenger_name" value="${passenger_name}"/>
      <c:param name="card_number" value="${card_number}"/>
      <c:param name="CVV_code" value="${CVV_code}"/>
      <c:param name="expire_date" value="${expire_date}"/>
      <c:param name="email" value="${email}"/>
      <c:param name="payment_amount" value="${payment_amount}"/>
    </c:url>
    
    <a href="${payupdate}">
    <input type="button" name="update" value="UPDATE PAYMENT DETAILS" style="margin-right: 10px; width: auto;">
    </a>
    
    <c:url value="deletepaydetails.jsp" var="passdelete">
         <c:param name="pid" value="${pid}"/>
         <c:param name="passenger_name" value="${passenger_name}"/>
         <c:param name="card_number" value="${card_number}"/>
         <c:param name="CVV_code" value="${CVV_code}"/>
         <c:param name="expire_date" value="${expire_date}"/>
         <c:param name="email" value="${email}"/>
         <c:param name="payment_amount" value="${payment_amount}"/>
    </c:url>
    <a href="${passdelete}">
    <input type="button" name="delete" value="DELETE PAYMENT DETAILS" style="margin-left: 10px; width: auto;">
    </a>
</div>
</section> 
<footer>
        <div class="container">
            <p>&copy; 2024 SeatReserve. All rights reserved.</p>
            <ul class="social-links">
                <li><a href="#">Facebook</a></li>
                <li><a href="#">Twitter</a></li>
                <li><a href="#">Instagram</a></li>
            </ul>
        </div>
    </footer>
</body>
</html>
