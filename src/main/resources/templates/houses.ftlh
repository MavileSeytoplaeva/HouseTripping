
<!DOCTYPE html>
<html>
<head>
    <title>HouseTripping</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid">
    <header class="p-3 text-bg-dark">
        <div class="container">
            <div class="row">
<#--                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">-->
<#--                    <a href="houses.ftlh" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">HouseTripping</a>-->
                    <a href="houses.ftlh" class="col-3 text-white text-decoration-none" style="font-size: 24px">HouseTripping</a>

                    <form class="col-6" role="search">
                        <input type="text" class="form-control form-control-dark text-bg-dark" name="country" placeholder="Search..." aria-label="Search">
                    </form>

                     <div class="col-2 text-end">
                       <a href="login"><button type="button" class="btn btn-outline-light me-2">Login</button></a>
                         <a href="registration"><button type="button" class="btn btn-warning">Sign-up</button></a>
                     </div>
                    <div class="col-1">
                        <#if user.email??>
                        <#--                    <h3>User name: <i>${user.name}</i></h3>-->
                            <form action="/logout" method="post">
                                <input type="hidden" name="_csrf", value="${_csrf.token}">
                                <input type="submit" class="btn btn-outline-light me-2" value="Log out"/>
<#--                                <input type="submit" value="Log out"/>-->
                            </form>
                            <#if user.isAdmin()>
                                <a href="/admin">Admin panel</a>
                            </#if>
                        </#if>
                    </div>

<#--                </div>-->
            </div>
        </div>
    </header>
</div>
<#--    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">-->
<#--        <div class="col-md-3 mb-2 mb-md-0">-->
<#--            <a href="/" class="d-inline-flex link-body-emphasis text-decoration-none">-->
<#--                &lt;#&ndash;                <svg class="bi" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>&ndash;&gt;-->
<#--                <p style="font-size: large">HouseTripping</p>-->
<#--            </a>-->
<#--        </div>-->

<#--        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">-->
<#--            <li><a href="#" class="nav-link px-2 link-secondary">Home</a></li>-->
<#--            <li><a href="#" class="nav-link px-2">Features</a></li>-->
<#--            <li><a href="#" class="nav-link px-2">Pricing</a></li>-->
<#--            <li><a href="#" class="nav-link px-2">FAQs</a></li>-->
<#--            <li><a href="#" class="nav-link px-2">About</a></li>-->
<#--        </ul>-->

<#--        <div class="col-md-3 text-end">-->
<#--            <button type="button" class="btn btn-outline-primary me-2"><a href="/login" style="text-decoration: none">Login</a></button>-->
<#--            <button type="button" class="btn btn-primary"><a href="/registration" style="color: white; text-decoration: none">Sign-up</a></button>-->
<#--        </div>-->
<#--    </header>-->
<#--</div>-->
<#if user.email??>
    <h3>User name: <i>${user.name}</i></h3>
    <form action="/logout", method="post">
        <input type="hidden", name="_csrf", value="${_csrf.token}">
        <input type="submit" value="Log out"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Admin panel</a>
    </#if>
<#else>
    <a href="/login">Sign in</a><hr>
</#if>
<#--<form action="/" method="get">-->
<#--    Search by country: <input type="text" name="country">-->
<#--    <input type="submit" value="Search"/>-->
<#--</form>-->
<#list houses as house>
    <div>
        <p><b>${house.country}</b> ${house.user.name} | <a href="/house/${house.id}">More...</a></p>
    </div>
<#else>
    <h3>No Houses</h3>
</#list>
<#--<#if user.email??>-->
<#--    <hr>-->
<#--    <h3>Create new poster</h3>-->
<#--    <form action="/house/create" method="post", enctype="multipart/form-data">-->
<#--        Country: <input type="text" name="country"/><br><br>-->
<#--        City: <input type="text" name="city"/><br><br>-->
<#--        Description: <input type="text" name="description"/><br><br>-->
<#--        Restrictions: <input type="text" name="Restrictions"/><br><br>-->
<#--        First photo: <input type="file" name="file1"/><br><br>-->
<#--        Second photo: <input type="file" name="file2"/><br><br>-->
<#--        Third photo: <input type="file" name="file3"/><br><br>-->
<#--        <input type="hidden", name="_csrf", value="${_csrf.token}">-->
<#--        <input type="submit" value="Add a house"/>-->
<#--    </form>-->
<#--</#if>-->
</body>
</html>

