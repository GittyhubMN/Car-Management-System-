<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Home - CarSpot</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Roboto:wght@700&family=Cormorant+Infant:wght@600&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        @font-face {
            font-family: 'Footlight MT Light';
            src: url('path/to/FootlightMTLight.ttf') format('truetype'); /* Update the path to your Footlight MT Light font file */
        }
        @font-face {
            font-family: 'Comic Sans MS';
            src: url('path/to/ComicSansMS.ttf') format('truetype'); /* Update the path to your Comic Sans MS font file */
        }
        @font-face {
            font-family: 'Bradley Hand ITC';
            src: url('path/to/BradleyHandITC.ttf') format('truetype'); /* Update the path to your Bradley Hand ITC font file */
        }
        @font-face {
            font-family: 'Lucida Calligraphy';
            src: url('path/to/LucidaCalligraphy.ttf') format('truetype'); /* Update the path to your Lucida Calligraphy font file */
        }
        body {
            background-image: url('https://img.freepik.com/free-vector/gradient-network-connection-background_23-2148886027.jpg?size=626&ext=jpg&ga=GA1.1.36223337.1719665411&semt=ais_user');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: white;
            scroll-behavior: smooth; /* Enable smooth scrolling */
        }
        .navbar {
            margin-bottom: 20px;
        }
        .navbar-dark .navbar-nav .nav-link {
            color: #9b59b6; /* Purple */
            font-family: 'Cormorant Infant', serif;
            font-weight: 600; /* SemiBold */
        }
        .navbar-dark .navbar-brand {
            color: #8e44ad; /* Darker purple */
            font-family: 'Lobster', cursive;
            text-shadow: 0 0 5px lightpurple;
        }
        .navbar-brand img {
            width: 30px; /* Adjust as needed */
            height: 30px; /* Adjust as needed */
            margin-right: 10px;
            border-radius: 50%;
        }
        .jumbotron {
            background: rgba(0, 0, 0, 0.6); /* Dark semi-transparent background */
            color: white;
            padding: 2rem 1rem;
        }
        .jumbotron h1 {
            color: white;
            font-family: 'Footlight MT Light', sans-serif;
            text-shadow: 0 0 10px #9b59b6, 0 0 20px #9b59b6, 0 0 30px #9b59b6, 0 0 40px #9b59b6, 0 0 50px #9b59b6, 0 0 60px #9b59b6, 0 0 70px #9b59b6;
        }
        .section {
            margin: 80px 0; /* Increase gap between sections */
        }
        .section h2 {
            font-family: 'Comic Sans MS', sans-serif;
            font-size: 36px; /* Increased font size */
        }
        .section p {
            font-family: 'Lucida Calligraphy', cursive;
            font-size: 18px; /* Increase font size */
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
        .section-content {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 40px; /* Increase gap between images and content */
        }
        .section-content img {
            width: 50%; /* Decrease image size */
            height: auto; /* Maintain aspect ratio */
            object-fit: cover; /* Maintain aspect ratio */
            border-radius: 10px; /* Rounded corners */
        }
        .section-content div {
            max-width: 50%;
            padding: 20px;
        }
        .section-content .btn-group {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">
            <img src="https://img.freepik.com/premium-vector/glowing-neon-line-car-rental-icon-isolated-dark-background-rent-car-sign-concept-automobile_104045-2685.jpg?size=626&ext=jpg&ga=GA1.1.36223337.1719665411&semt=ais_user"> <!-- Placeholder for the logo image -->
            CarSpot
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <%-- Scriptlet Tag --%>
                <%
                    String[] menuLinks = {"#cars", "#salesperson", "#adminrecords", "adminlogin.jsp"};
                    String[] menuLabels = {"Cars", "Salesperson", "Admin Records", "Logout"};
                %>
                <%-- Expression Tag within Scriptlet --%>
                <% for (int i = 0; i < menuLinks.length; i++) { %>
                    <li class="nav-item">
                        <a class="nav-link" href="<%= menuLinks[i] %>"><%= menuLabels[i] %></a>
                    </li>
                <% } %>
            </ul>
        </div>
    </nav>

    <!-- Jumbotron -->
    <div class="jumbotron text-center">
        <h1 class="display-4">Admin Dashboard</h1>
    </div>

    <!-- Sections -->
    <div class="container">
        <!-- Cars Section -->
        <div id="cars" class="section">
            <div class="section-content">
                <img src="https://media.licdn.com/dms/image/D4D12AQERRAkSCm-XiQ/article-cover_image-shrink_720_1280/0/1694100798905?e=2147483647&v=beta&t=7UwjQl1_tQ4-u3oNRjrc6lE7UkdljuySRImyGCsVNAU" alt="Car Showroom Image">
                <div>
                    <h2>Manage Cars</h2>
                    <p>Add, update, or remove cars from the showroom's inventory.</p>
                    <div class="btn-group" role="group">
                        <a href="addcar.jsp" class="btn btn-purple">Add</a>
                        <a href="updatecar.jsp" class="btn btn-purple">Update</a>
                        <a href="deletecar.jsp" class="btn btn-purple">Delete</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Salesperson Section -->
        <div id="salesperson" class="section">
            <div class="section-content">
                <div>
                    <h2>Manage Salespersons</h2>
                    <p>View and manage the records of salespersons.</p>
                    <div class="btn-group" role="group">
                        <a href="addsalesperson.jsp" class="btn btn-purple">Add</a>
                        <a href="updatesalesperson.jsp" class="btn btn-purple">Update</a>
                        <a href="deletesalesperson.jsp" class="btn btn-purple">Delete</a>
                    </div>
                </div>
                <img src="https://www.loanry.com/blog/wp-content/uploads/2019/11/auto-dealership.jpg" alt="Sample Image">
            </div>
        </div>

        <!-- Admin Records Section -->
        <div id="adminrecords" class="section">
            <div class="section-content">
                <img src="${pageContext.request.contextPath}/images/adminrecords.jpg" alt="Admin Records Image">
                <div>
                    <h2>Admin Records</h2>
                    <p>Manage and update the admin records of the showroom.</p>
                    <div class="btn-group" role="group">
                        <a href="addadmin.jsp" class="btn btn-purple">Add</a>
                        <a href="updateadmin.jsp" class="btn btn-purple">Update</a>
                        <a href="deleteadmin.jsp" class="btn btn-purple">Delete</a>
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
