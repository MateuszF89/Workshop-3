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

    <body>
    <h1>Dodaj użytkownika</h1>

    <form action="/user/add" method="post">
        <label for="nazwa">Nazwa:</label><br>
        <input type="text" id="nazwa" name="nazwa" required><br><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <label for="haslo">Hasło:</label><br>
        <input type="password" id="haslo" name="haslo" required><br><br>

        <input type="submit" value="Zapisz">
    </form>
    </body>

    <!-- Content Row -->
    <!-- ... Rest of your content ... -->

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->


<%@ include file="/footer.jsp" %>

