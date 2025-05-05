<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Update Car Price - CarSpot</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Roboto:wght@700&family=Cormorant+Infant:wght@600&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        @font-face {
            font-family: 'Footlight MT Light';
            src: url('<%= request.getContextPath() %>/path/to/FootlightMTLight.ttf') format('truetype'); /* Update the path to your Footlight MT Light font file */
        }
        @font-face {
            font-family: 'Comic Sans MS';
            src: url('<%= request.getContextPath() %>/path/to/ComicSansMS.ttf') format('truetype'); /* Update the path to your Comic Sans MS font file */
        }
        @font-face {
            font-family: 'Bradley Hand ITC';
            src: url('<%= request.getContextPath() %>/path/to/BradleyHandITC.ttf') format('truetype'); /* Update the path to your Bradley Hand ITC font file */
        }
        body {
            background-image: url('https://wallpapercave.com/wp/wp5205257.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: white;
        }
        .container {
            margin-top: 50px;
        }
        .form-group label {
            font-family: 'Comic Sans MS', sans-serif;
        }
        .btn-purple {
            background-color: #9b59b6;
            border-color: #9b59b6;
            color: white;
            font-family: 'Cormorant Infant', serif;
            font-weight: 600; /* SemiBold */
        }
        .btn-purple:hover {
            background-color: #8e44ad;
            border-color: #8e44ad;
        }
        .card {
            background: rgba(0, 0, 0, 0.6); /* Dark semi-transparent background */
            color: white;
            border-radius: 15px; /* Rounded square shape */
        }
        .card-header {
            font-family: 'Footlight MT Light', sans-serif;
            font-size: 24px;
        }
        .message {
            margin-top: 20px;
            padding: 10px;
            background-color: rgba(255, 255, 255, 0.8);
            color: #333;
            border-radius: 5px;
            text-align: center;
        }
        /* Custom style for underlined form inputs */
        .form-control {
            border: none;
            border-bottom: 1px solid white;
            background-color: transparent;
            color: white;
        }
        .form-control:focus {
            border-color: white;
            box-shadow: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header text-center">
                        Update Car Price
                    </div>
                    <div class="card-body">
                        <c:if test="${not empty message}">
                            <div class="message">
                                <c:out value="${message}" />
                            </div>
                        </c:if>
                        <form action="ServletUpdateCar" method="post">
                            <div class="form-group">
                                <label for="carid">Car ID</label>
                                <input type="text" class="form-control" id="carid" name="carid" required>
                            </div>
                            <div class="form-group">
                                <label for="newcarprice">New Price of Car</label>
                                <input type="text" class="form-control" id="newcarprice" name="newcarprice" required>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-purple">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
