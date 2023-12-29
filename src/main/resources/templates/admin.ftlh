<!DOCTYPE html>
<html>
<head>
    <title>HouseTripping</title>
</head>
<body>
<h1>HouseTripping</h1><hr>
<h4>Administrator</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Phone number</th>
        <th>Active</th>
        <th>Role</th>
        <th>Ban user</th>
        <th>Edit</th>
        <th>More information...</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th><#if user.active>true<#else>false</#if></th>
            <th><#list user.roles as role>${role}</#list></th>
            <th><form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Ban">
                </form>
            </th>
            <th><a href="/admin/user/edit/${user.id}">Edit user</a></th>
            <th><a href="/user/${user.id}">More information...</a></th>
        </tr>
        <#else>
        <h3>No users</h3>
    </#list>
</table>

</body>
</html>