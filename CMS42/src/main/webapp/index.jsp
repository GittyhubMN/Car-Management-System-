<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>CarSpot</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Roboto:wght@700&family=Cormorant+Infant:wght@600&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        @font-face {
            font-family: 'Algerian';
            src: url('path/to/Algerian.ttf') format('truetype'); /* Update the path to your Algerian font file */
        }
        @font-face {
            font-family: 'Colonna MT';
            src: url('path/to/ColonnaMT.ttf') format('truetype'); /* Update the path to your Colonna MT font file */
        }
        body {
            background-image: url('https://png.pngtree.com/thumb_back/fh260/background/20230519/pngtree-car-showroom-in-the-dark-lit-room-with-boxes-image_2601969.jpg'); /* URL to your background image */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: white;
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
            font-family: 'Algerian', sans-serif;
            text-shadow: 0 0 10px #9b59b6, 0 0 20px #9b59b6, 0 0 30px #9b59b6, 0 0 40px #9b59b6, 0 0 50px #9b59b6, 0 0 60px #9b59b6, 0 0 70px #9b59b6;
        }
        .jumbotron p {
            color: white;
            font-family: 'Colonna MT', serif;
        }
        .jumbotron .lead {
            font-size: 1.5rem; /* Increase font size */
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
        #about-us {
            padding: 3rem 1rem;
            background: rgba(52, 58, 64, 0.8); /* Dark semi-transparent background */
            margin-top: 40px; /* Increased margin-top */
        }
        #about-us h2 {
            font-family: 'Algerian', sans-serif;
            text-shadow: 0 0 10px #9b59b6;
            margin-bottom: 20px;
        }
        #about-us p {
            font-family: 'Colonna MT', serif;
            font-size: 1.2rem;
        }
        .parent {
            position: relative;
            
            width: 60%; /* Adjust the width to reduce the size */
            margin: 0 auto;
            overflow: hidden;
         
            
        }
        .slider {
            display: flex;
            transition: transform 0.5s ease-in-out;
        }
        .slide {
            min-width: 100%;
            transition: opacity 0.5s ease-in-out;
        }
        .slide img {
            width: 100%;
            height: auto;
            max-width: 500px; /* Set the max-width to reduce image size */
            max-height: 300px; /* Set the max-height to reduce image size */
            border-radius: 15px; /* Rounded rectangle shape */
            box-shadow: 0 0 20px #9b59b6; /* Glow effect */
        }
        button {
            position: absolute;
            top: 40%;
            transform: translateY(-50%);
            background: none;
            border: none;
            z-index: 3;
            cursor: pointer;
        }
        .right {
            right: 10px;
        }
        .left {
            left: 10px;
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
                <li class="nav-item">
                    <a class="nav-link" href="adminlogin.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="adminregistration.jsp">Registration</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#about-us">About Us</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Jumbotron -->
    <div class="jumbotron text-center">
        <h1 class="display-4">Welcome to CarSpot</h1>
        <p class="lead">Your one-stop solution to manage car showroom activities efficiently.</p>
        <hr class="my-4">
        <p class="lead">Get started by logging in or registering a new account.</p>
        <a class="btn btn-purple btn-lg" href="adminlogin.jsp" role="button">Login</a>
        <a class="btn btn-purple btn-lg" href="adminregistration.jsp" role="button">Register</a>
    </div>

    <!-- Image Overlay Slider -->
    <div class="parent">
        <button type="button" id='left' class='left' name="button">
            <svg version="1.1" id="Capa_1" width='40px' height='40px' xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                viewBox="0 0 477.175 477.175" style="enable-background:new 0 0 477.175 477.175;" xml:space="preserve">
                <g>
                    <path style='fill: #9d9d9d;' d="M145.654,238.588l225.1-225.1c5.3-5.3,13.8-5.3,19.1,0s5.3,13.8,0,19.1l-215.5,215.5l215.5,215.5
                    c5.3,5.3,5.3,13.8,0,19.1c-2.6,2.6-6.1,4-9.5,4s-6.9-1.3-9.5-4l-225.1-225.1C140.354,252.388,140.354,243.888,145.654,238.588z
                    "/>
                </g>
            </svg>
        </button>
        <div class="slider">
            <div class="slide">
                <img src='https://i.pinimg.com/736x/29/42/0d/29420dfba87d65689a9f7960ebb68ad6.jpg' alt=''>
            </div>
            <div class="slide">
                <img src='https://www.loanry.com/blog/wp-content/uploads/2019/11/auto-dealership.jpg' alt=''>
            </div>
            <div class="slide">
                <img src='https://i.pinimg.com/736x/7d/f7/4e/7df74ed20edd044eb5f3ceeb79846b40.jpg' alt=''>
            </div>
            
        </div>
        <button type="button" id='right' class='right' name="button">
            <svg version="1.1" id="Capa_1" width='40px' height='40px' xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                viewBox="0 0 477.175 477.175" style="enable-background:new 0 0 477.175 477.175;" xml:space="preserve">
                <g>
                    <path style='fill: #9d9d9d;' d="M332.075,238.588L106.975,13.488c-5.3-5.3-13.8-5.3-19.1,0s-5.3,13.8,0,19.1l215.5,215.5l-215.5,215.5
                    c-5.3,5.3-5.3,13.8,0,19.1c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4l225.1-225.1C337.375,252.388,337.375,243.888,332.075,238.588z
                    "/>
                </g>
            </svg>
        </button>
    </div>

    <!-- About Us Section -->
    <section id="about-us" class="text-center">
        <div class="container">
            <h2>About Us</h2>
            <p>CarSpot is a comprehensive car showroom management system designed to streamline your operations and enhance customer satisfaction. With our platform, you can manage inventory, sales, and customer information all in one place.</p>
        </div>
    </section>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Custom JS -->
    <script>
        let slider = document.querySelector('.slider');
        let slides = document.querySelectorAll('.slide');
        let index = 0;
        let interval = setInterval(run, 3000);

        function run() {
            index++;
            changeSlide();
        }

        function changeSlide() {
            if (index > slides.length - 1) {
                index = 0;
            } else if (index < 0) {
                index = slides.length - 1;
            }
            slider.style.transform = `translateX(${-index * 100}%)`;
        }

        document.getElementById('left').addEventListener('click', () => {
            index--;
            changeSlide();
            resetInterval();
        });

        document.getElementById('right').addEventListener('click', () => {
            index++;
            changeSlide();
            resetInterval();
        });

        function resetInterval() {
            clearInterval(interval);
            interval = setInterval(run, 3000);
        }
    </script>
</body>
</html>
