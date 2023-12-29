<!DOCTYPE html>
<html>
<head>
    <title>Info about House</title>
</head>
<body>
<h1>HouseTripping</h1><hr>
<h4>Houses around the world</h4>
<br>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Country: </b>${house.country}<br>
<b>City: </b>${house.city}<br>
<b>Description: </b>${house.description}<br>
<b>Restrictions: </b>${house.restrictions}<br>
<b>Author: </b><a href="/user/${house.user.id}">${house.user.name}<br>


</body>
</html>