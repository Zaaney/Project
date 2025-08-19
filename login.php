<?php
session_start();
include("config.php");

// Redirect if already logged in
if (isset($_SESSION['username'])) {
    header("Location: dashboard/");
    exit();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $conn->real_escape_string($_POST['username']);
    $password = md5($_POST['password']);

    $sql = "SELECT * FROM users WHERE username='$username' AND password='$password'";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        $_SESSION['username'] = $username;

        header("Cache-Control: no-cache, no-store, must-revalidate");
        header("Pragma: no-cache");
        header("Expires: 0");

        header("Location: dashboard/");
        exit();
    } else {
        $error = "Invalid username or password!";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CyberZone - Login</title>
    <style>
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #1e3a8a, #3b82f6, #06b6d4);
        }
        .login-box {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(10px);
            padding: 30px;
            border-radius: 15px;
            width: 350px;
            box-shadow: 0px 8px 20px rgba(0,0,0,0.3);
            color: white;
            text-align: center;
        }
        .login-box h2 {
            margin-bottom: 20px;
        }
        .login-box input {
            width: 90%;
            padding: 12px;
            margin: 10px 0;
            border: none;
            border-radius: 8px;
            outline: none;
        }
        .login-box input:focus {
            border: 2px solid #3b82f6;
        }
        .login-box button {
            width: 95%;
            padding: 12px;
            background: #3b82f6;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            transition: background 0.3s;
        }
        .login-box button:hover {
            background: #2563eb;
        }
        .error {
            color: #ff6b6b;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>CyberZone Login</h2>
        <form method="POST">
            <input type="text" name="username" placeholder="Username" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <button type="submit">Login</button>
        </form>
        <?php if (isset($error)) echo "<p class='error'>$error</p>"; ?>
    </div>
</body>
</html>
