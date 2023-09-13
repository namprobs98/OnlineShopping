<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>All Products</title>
        <link href="img/icons8-supplier-16.png" rel="icon" />
        <link rel="stylesheet" href="./css/seller/home.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined" rel="stylesheet">
    </head>
    <body>
        <div class="container-product">
            <!-- VERTICAL NAVBAR -->
            <%@include file="components/sidebarSeller.jsp" %>
            <!-- MAIN SECTION -->
            <main>
                <h1>Products</h1>
                <div class="insights">
                    <c:forEach items="${productList}" var="product">
                        <div class="insight sales">
                            <div class="insight-content">
                                <div class="insight-figure">
                                    <img src="${product.productImage}" width="100%">
                                    <h2>${product.name}</h2>
                                    <p>${product.price} VND</p>
                                </div>
                                <button><a href="update-product?pid=${product.productId}" style="
                                           width: 100%;
                                           display: block;">Edit</a></button>
                            </div>
                        </div>
                    </c:forEach>

                </div>
                <!--Paging-->
                <c:if test="${productList != null || productList.size() != 0}">
                    <nav aria-label="Page navigation example"
                         class=" d-flex justify-content-center mt-3">
                        <ul class="paging">
                            <li class="page-item ${page lt 2 ? " disabled" : "" }">
                                <a class="page-link" href="my-products?page=${page-1}">Previous</a>
                            </li>
                            <c:forEach begin="1" end="${totalPages}" var="i">
                                <li class="page-item ${i == page ? " active":""}">
                                    <a class="page-link" href="my-products?page=${i}">${i}</a>
                                </li>
                            </c:forEach>
                            <li class="page-item ${page gt (totalPages-1) ? " disabled" : "" }">
                                <a class="page-link" href="my-products?page=${page+1}">Next</a>
                            </li>
                        </ul>
                    </nav>
                </c:if>
            </main>
        </div>

        <style>
            .paging {
                list-style-type: none;
                display: flex;
                justify-content: center;
                gap: 0.8rem;
                padding: 3rem 0;
            }
            
            .paging a:hover {
                color: #eaa636;
            }

        </style>
        <script src="https://kit.fontawesome.com/3a6c73e27c.js" crossorigin="anonymous"></script>
    </body>
</html>