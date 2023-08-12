<%--
  Created by IntelliJ IDEA.
  User: mateu
  Date: 11.08.2023
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/header.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href='<c:url value="/user/list"/>' class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
  </div>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Details</title>
    <style>
      table {
        width: 50%;
        margin: left;
        border-collapse: collapse;
        border: 1px solid #ddd;
      }

      th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
      }

      th {
        background-color: #f2f2f2;
      }

      tr:hover {
        background-color: #f5f5f5;
      }
    </style>
  </head>
  <body>

  <h2>Szczegóły użytkownika</h2>

  <table>
    <tr>
      <th>Id</th>
      <td> ${user.id}</td>
    </tr>
    <tr>
      <th>Nazwa użytkownika</th>
      <td>${user.userName}</td>
    </tr>
    <tr>
      <th>Email</th>
      <td>${user.email}</td>
    </tr>
  </table>

  </body>
  <!-- Content Row -->
  <!-- ... Rest of your content ... -->

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->


<%@ include file="/footer.jsp" %>

