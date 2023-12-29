<!DOCTYPE html>
<html lang="en">
<head>
    <title>HouseTripping</title>
</head>
<body>
<h1>HouseTripping</h1>
<h3>More information about ${user.name}</h3>
<b>Phone number: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
<h4>${user.name}'s houses</h4>
<#list houses as house>
    <div>
        <p><b>${house.country}</b> ${house.user.name} | <a href="/house/${house.id}">More...</a></p>
    </div>
    <#else>
    <h3>No houses</h3>

</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>