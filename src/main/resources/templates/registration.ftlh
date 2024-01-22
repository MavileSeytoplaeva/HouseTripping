<!DOCTYPE html>
<html lang="en">
<head>
    <title>HouseTripping</title>
</head>
<body>
<h1>HouseTripping</h1>
<h4>Sign up</h4>
<form action="/registration" method="post">
    Name: <input type="text" name="name"><br><br>
    Email: <input type="email" name="email"><br><br>
    Phone: <input type="text" name="phoneNumber"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Sign up"/>
</form>
<#--<#if errorMessage??>-->
<#--    <h2 style="color: red">${errorMessage}</h2>-->
<#--</#if>-->
</body>
</html>