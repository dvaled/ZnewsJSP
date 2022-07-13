<%-- 
    Document   : writer
    Created on : Jul 13, 2022, 2:26:32 PM
    Author     : DAVA
--%>

<%@page import="Controller.WriterController"%>
<%@page import="java.sql.ResultSet"%>
<%--<%@ taglib prefix="c" uri="http://java.sun/com/jstl/core" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='layouts/head.jsp'>
            <jsp:param name="title" value="Homepage" />
        </jsp:include>
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body class="d-flex flex-column h-100">
        <jsp:include page='layouts/navbar.jsp'></jsp:include>

        <%
            WriterController wc = new WriterController();

            String search = "";
            ResultSet rs;

            if (request.getParameter("search") != null) {
                search = request.getParameter("search");
            } 

            if (search.equals("")) {
                rs = wc.get();
            } else {
                rs = wc.getByName(search);
            }
        %>

        <!-- Begin page content -->
        <main class="flex-shrink-0">
            <div class="container">
                <h1 class="mt-5">Znews</h1>
                <h1 class="mt-5">Hello, <%= request.getSession(true).getAttribute("name") %></h1>
                <p class="lead">Welcome to the znews writer app! You are logged in using username: <strong><%= request.getSession().getAttribute("username") %></strong></p>
                <div class="row pt-5">
                    <div class="col-6">
                        <form action="index" method="GET">
                            <div class="mb-3">
                                <label class="form-label">Search</label>
                                <div class="input-group">
                                    <input type="text" class="form-control" name="search" value="<%= search%>" />
                                    <span class="input-group-append">
                                        <button class="input-group-text bg-light d-block">
                                            <i class='bx bxs-search'></i>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row pt-5">
                    <div class="col-12">
                        <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Berita</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% while(rs.next()) { %>
                            <tr>
                                <td><%= rs.getString("name") %></td>
                                <td><%= rs.getString("bagian") %></td>
                                <td><%= rs.getString("username") %></td>
                                <td><%= rs.getString("password") %></td>
                                <td>Di daftarkan oleh: <%= rs.getString("registerd_by_name") %></td>
                                
                                <td>
                                    <a href="#" class="btn btn-sm btn-info">Edit</a>
                                </td>
                                <td>
                                    <a href="#" class="btn btn-sm btn-danger">Delete</a>
                                </td>
                            </tr>
                            <% } %>
                            <tr>
                                <td>
                                    <a href="#" class="btn btn-sm btn-sm">Register New Writer</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
          </div>
        </main>
        
        
        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
    </body>
</html>
