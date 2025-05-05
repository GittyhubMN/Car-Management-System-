<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background-image: url('https://thumbs.dreamstime.com/b/purple-lock-computer-keyboard-sits-top-symbolizing-security-measures-place-ai-generative-320500167.jpg?w=992'); /* Background image URL */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: white;
            font-family: 'Cormorant Infant', serif; /* Default font for the page */
        }
        .container {
            max-width: 500px;
            margin-top: 150px; /* Move the sign-in box down */
        }
        .card {
            border: 0;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.3); /* Lighter box shadow */
            padding: 30px;
            background-color: rgba(0, 0, 0, 0.7); /* Translucent background */
        }
        .form-group {
            font-family: 'Comic Sans MS', sans-serif; /* Font for form labels */
        }
        .form-control {
            border: none; /* Remove default border */
            background-color: transparent; /* Transparent background */
            border-bottom: 1px solid white; /* Bottom border only */
            color: white; /* Text color */
            margin-bottom: 15px;
            padding: 8px 0; /* Adjust padding */
            font-size: 16px; /* Adjust font size */
            transition: border-color 0.3s; /* Smooth transition for border color */
        }
        .form-control:focus {
            outline: none;
            border-color: #8a2be2; /* Purple focus color */
        }
        .form-control::placeholder {
            color: #8a2be2; /* Purple placeholder text color */
        }
        .btn-primary {
            background-color: #8a2be2; /* Purple button */
            border-color: #8a2be2;
            font-family: 'Cormorant Infant', serif; /* Font for the button */
        }
        .btn-primary:hover {
            background-color: #6c757d; /* Dark gray on hover */
            border-color: #6c757d;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <h2 class="text-center" style="font-family: 'Cormorant Infant', serif;">Sign In</h2>
            <form action="ServletAdminLogin" method="post" onsubmit="return validateForm()">
                <!-- Email -->
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required autocomplete="off">
                </div>
                <!-- Password -->
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" required autocomplete="off">
                </div>
                <!-- Submit Button -->
                <button type="submit" class="btn btn-primary btn-block">Login</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Client-side validation -->
    <script>
        function validateForm() {
            var email = document.getElementById('email').value.trim();
            var password = document.getElementById('password').value.trim();

            // Simple validation example (you can extend this as per your requirements)
            if (email === '' || password === '') {
                alert('Please fill in all fields.');
                return false;
            }

            // Additional validation (e.g., email format, password strength) can be added here

            return true;
        }

        // Clear input fields on page load with a small delay
        window.onload = function() {
            setTimeout(function() {
                document.getElementById('email').value = '';
                document.getElementById('password').value = '';
            }, 0);
        }
    </script>
</body>
</html>
