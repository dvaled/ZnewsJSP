<%-- 
    Document   : login
    Created on : Jul 12, 2022, 11:44:24 PM
    Author     : DAVA
--%>

<%--<%@ taglib prefix="c" uri="http://java.sun/com/jstl/core" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='layouts/head.jsp'>
            <jsp:param name="title" value="Homepage" />
        </jsp:include>
        <style>
            .input-group-append {
                cursor: pointer;
            }
        </style>
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://unpkg.com/js-datepicker/dist/datepicker.min.css"> 

    </head>
    <body class="d-flex flex-column h-100">
        <jsp:include page='layouts/navbarlogin.jsp'></jsp:include>

            <!-- Begin page content -->
            <main class="flex-shrink-0">
                <div class="container">
                    <h1 class="mt-5">Login</h1>
                    <p class="lead">Masukkan username dan password anda</p>
                    <div class="row pt-5">
                    <% if (request.getSession(true).getAttribute("errors") != null) {%>
                    <div class="col-12 mb-3">
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            <strong>Error!</strong> <%= request.getSession(true).getAttribute("errors")%>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    </div>
                    <% } %>
                    <div class="col-12">
                        <form method="POST" action="login">
                            <div class="mb-3">
                                <label class="form-label">Username</label>
                                <input type="text" class="form-control" placeholder="Masukkan username anda..." name="username" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Password</label>
                                <input type="password" class="form-control" placeholder="Masukkan password anda..." name="password" required>
                            </div>
                            <div class="mb-3">
                                <button type="submit" class="btn btn-primary btn-small btn-rounded">Submit</button>
                            </div>
                            <div>
                                <a href="register" class="btn btn-sm btn-sm">create new account</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </main>


        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
    </body>
</html>
