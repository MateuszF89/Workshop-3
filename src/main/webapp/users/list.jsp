<%--
  Created by IntelliJ IDEA.
  User: mateu
  Date: 11.08.2023
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ include file="/users/header.jsp" %>

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
                    <a href='<c:url value="/user/add"/>' class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
                </div>

                <body>

                <div class="container mt-5">
                    <h2 class="mb-4">Lista użytkowników</h2>
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Nazwa użytkownika</th>
                            <th scope="col">Email</th>
                            <th scope="col">Akcja</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${users}" var="user">
                            <tr>
                                <th>${user.id}</th>
                                <td>${user.userName}</td>
                                <td>${user.email}</td>
                                <td>
                                    <a href='<c:url value="/user/delite?id=${user.id}"/>' class='btn btn-danger'>Usuń</>
                                    <a href='<c:url value="/user/edit?id=${user.id}"/>' class='btn btn-primary'>Edytuj</>
                                    <a href='<c:url value="/user/show?id=${user.id}"/>' class='btn btn-success'>Pokaż</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                </body>

                <!-- Content Row -->
                <!-- ... Rest of your content ... -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

<%@ include file="/users/footer.jsp" %>
