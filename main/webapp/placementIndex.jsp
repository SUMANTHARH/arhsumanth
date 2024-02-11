<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <%@include file="css/style.jsp"%>
    <title>Placement Management Application</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .slide-container {
            position: relative;
            width: 100%;
            max-width: 500px;
            margin: auto;
            overflow: hidden;
            border-radius: 5px;
        }

        .slide-content {
            display: flex;
            transition: transform 0.5s ease;
        }

        .slide-content div {
            flex: 0 0 100%;
            padding: 20px;
        }

        .slide-btn {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-color: rgba(0, 0, 0, 0.5);
            color: #fff;
            font-size: 24px;
            line-height: 50px;
            text-align: center;
            cursor: pointer;
        }

        .slide-btn.prev {
            left: 10px;
        }

        .slide-btn.next {
            right: 10px;
        }
    </style>
</head>
<body>
    <center>
        <h1>Placement Management</h1>
        <h2>
            <a href="placement?action=placementlist" class="btn btn-primary">Display All Placements</a>
        </h2>
    </center>
    <a href="AdminDashboard.html" class="btn btn-primary">Dashboard</a>
    <div align="center" class="slide-container">
        <div class="slide-content">
            <div>
                <h2>Add New Placement</h2>
                <form action="placement?action=placementinsert" method="post">
                    <!-- Your form fields for adding new placement -->
                    <input type="text" name="name" placeholder="Placement Name" required><br>
                    <input type="text" name="college" placeholder="Placement College" required><br>
                    <input type="text" name="date" placeholder="Placement Date" required><br>
                    <input type="text" name="qualification" placeholder="Placement Qualification" required><br>
                    <input type="text" name="year" placeholder="Placement Year" required><br>
                    <button type="submit" class="btn btn-success">Save</button>
                </form>
            </div>
            <div>
                <h2>Edit Placement</h2>
                <form action="placement?action=placementupdate" method="post">
                    <!-- Your form fields for editing placement -->
                </form>
            </div>
        </div>
        <div class="slide-btn prev">&#10094;</div>
        <div class="slide-btn next">&#10095;</div>
    </div>
    <!-- Include Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".next").click(function () {
                $(".slide-content").animate({
                    marginLeft: "-=100%"
                }, 500);
            });
            $(".prev").click(function () {
                $(".slide-content").animate({
                    marginLeft: "+=100%"
                }, 500);
            });
        });
    </script>
</body>
</html>