<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>News Info</title>
    <style>
        h1{
            text-align: center;
            border-bottom: 1px solid silver;
        }
        table{
            border: 1px solid silver;
        }
        table tr td {
            border-bottom: 1px solid silver;
        }
        a{
            text-decoration: none;
        }
    </style>
</head>
<body>
<h1>User info</h1>
<table>
    <tr>
        <td>Id</td>
        <td>${user.id}</td>
    </tr>
    <tr>
        <td>Name</td>
        <td>${user.name}</td>
    </tr>
    <tr>
        <td>Email</td>
        <td>${user.email}</td>
    </tr>
    <tr>
        <td>Role</td>
        <td>${user.role}</td>
    </tr>
</table>

<br>
<a href="/users">Back</a>
</body>
</html>