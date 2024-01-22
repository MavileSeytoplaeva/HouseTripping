<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>
<#--<div class="container">-->
<#--    <header class="p-3 text-bg-dark">-->
<#--        <div class="container">-->
<#--            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">-->
<#--                <a href="houses.ftlh" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">HouseTripping</a>-->

<#--                <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">-->
<#--                    <input type="search" class="form-control form-control-dark text-bg-dark" placeholder="Search..." aria-label="Search">-->
<#--                </form>-->

<#--                <div class="text-end">-->
<#--                    <a href="login"><button type="button" class="btn btn-outline-light me-2">Login</button></a>-->
<#--                    <a href="registration"><button type="button" class="btn btn-warning">Sign-up</button></a>-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
<#--    </header>-->
<#--</div>-->
<#--<h1>HouseTripping</h1>-->
<#--<h4>Sign in</h4>-->

<#--<main class="form-signin w-100 m-auto">-->
<#--    <form>-->
<#--        <img class="mb-4" src="/docs/5.3/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">-->
<#--        <h1 class="h3 mb-3 fw-normal">Please sign in</h1>-->

<#--        <div class="form-floating">-->
<#--            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="username">-->
<#--            <label for="floatingInput">Email address</label>-->
<#--        </div>-->
<#--        <div class="form-floating">-->
<#--            <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password">-->
<#--            <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--            <label for="floatingPassword">Password</label>-->
<#--        </div>-->

<#--        &lt;#&ndash;        <div class="form-check text-start my-3">&ndash;&gt;-->
<#--        &lt;#&ndash;            <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">&ndash;&gt;-->
<#--        &lt;#&ndash;            <label class="form-check-label" for="flexCheckDefault">&ndash;&gt;-->
<#--        &lt;#&ndash;                Remember me&ndash;&gt;-->
<#--        &lt;#&ndash;            </label>&ndash;&gt;-->
<#--        &lt;#&ndash;        </div>&ndash;&gt;-->
<#--        <button class="btn btn-primary w-100 py-2" type="submit">Sign in</button>-->
<#--        <p class="mt-5 mb-3 text-body-secondary">© 2017–2023</p>-->
<#--    </form>-->
<#--</main>-->
<form action="/login" method="post">
    Email: <input type="email" name="username"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Sign in"/>
</form>
<br>
<a href="/registration">Sign up</a><br><br>
<a href="/">Back</a>
</body>
</html>
