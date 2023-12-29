<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
<h1>HouseTripping</h1>
<h4>Sign in</h4>
<form action="/login" method="post">
    Email: <input type="email" name="username"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Sign in"/>
</form>
<br>
<a href="/registration">Sign up</a>
</body>
</html>