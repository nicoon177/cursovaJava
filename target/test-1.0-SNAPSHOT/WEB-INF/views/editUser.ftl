
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update user page</title>
</head>
<body>

<form name="user" action="/updateUser" method="post">
    <p>Id</p>
    <input title="Id" type="text" name="id" value="${user.id}">
    <p>Name</p>
    <input title="name" type="text" name="name" value="${user.name}">
    <p>Email</p>
    <input title="email" type="text" name="email" value="${user.email}">
    <p>Role</p>
    <input title="role" type="text" name="role" value="${user.role}">
    <input type="submit" value="OK">
</form>

</body>
</html>