<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MediHelp Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(to right, rgba(0,123,255,0.7), rgba(255,255,255,0.7)), url('medical_background.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            width: 90%;
            max-width: 1000px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            overflow: hidden;
        }

        .left-side, .right-side {
            flex: 1;
            min-width: 300px;
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .left-side {
            background-color: #007bff;
            color: white;
            text-align: center;
        }

        .left-side h1 {
            margin: 0;
            font-size: 48px;
            font-weight: bold;
        }

        .left-side p {
            font-size: 24px;
            margin-top: 15px;
            font-style: italic;
        }

        .right-side {
            background-color: #f8f9fa;
        }

        form {
            width: 100%;
        }

        .input-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input {
            padding: 12px;
            border-radius: 30px;
            border: 1px solid #ccc;
            width: calc(100% - 26px); /* Adjust width to accommodate padding and border */
            font-size: 16px;
            box-shadow: inset 0 2px 3px rgba(0,0,0,0.1);
        }

        button {
            padding: 15px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        button:hover {
            background-color: #0056b3;
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            margin-bottom: 30px;
            font-size: 32px;
            color: #007bff;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="left-side">
            <h1>MediHelp</h1>
            <p>WE Care</p>
        </div>
        <div class="right-side">
            <form action="dashboard" method="post">
                <h2>Login</h2>
                <div class="input-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="input-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="submit">Login</button>
            </form>
        </div>
    </div>
</body>
</html>
