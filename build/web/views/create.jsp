<%-- 
    Document   : create
    Created on : Jul 12, 2022, 3:57:41 PM
    Author     : DAVA
--%>

<%@page import="Controller.ProductController"%>
<%@page import="java.sql.ResultSet"%>
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
        <jsp:include page='layouts/navbar.jsp'></jsp:include>

        <!-- Begin page content -->
        <main class="flex-shrink-0">
            <div class="container">
                <h1 class="mt-5">Tulis Berita</h1>
                <p class="lead">Tulis Berita baru pada sistem aplikasi berita</p>
                <div class="row pt-5">
                    <div class="col-12">
                        <form method="POST" action="create">
                            <div class="mb-3">
                                <label class="form-label">Judul Berita</label>
                                <input type="text" class="form-control" placeholder="Tulis Judul Berita..." name="news_name" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Deskripsi Berita</label>
                                <input type="text" class="form-control" placeholder="Tulis deskripsi berita..." name="description" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Isi Berita</label>
                                <input type="text" class="form-control" placeholder="Tulis isi Berita..." name="news_content" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Tipe Berita</label>
                                <select class="form-select" aria-label="Default select example" name="content_type" required>
                                    <option value="Test">Test</option>
                                    <option value="Test">Test</option>
                                    <option value="Test">Test</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Tanggal rilis</label>
                                <div class="input-group date" id="datepicker">
                                    <input type="text" class="form-control" id="date" name="publish_date" required />
                                    <span class="input-group-append">
                                        <span class="input-group-text bg-light d-block">
                                            <i class='bx bxs-calendar'></i>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="mb-3">
                                <button type="submit" class="btn btn-primary btn-small btn-rounded">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </main>


        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
        <script src="https://unpkg.com/js-datepicker"></script> 
        <script>
            const picker = datepicker('#date', {
                formatter: (input, date, instance) => {
                    input.value = date.toLocaleDateString(); // => '1/1/2099'
                }
            })
        </script>

    </body>
</html>
