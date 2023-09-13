<%-- Document : product Created on : May 27, 2022, 7:09:50 AM Author : Admin --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>${productDetail.name}</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/icons8-cofee-16.png" rel="icon" />

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Playfair+Display:wght@600;700&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
              rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
              rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/home.css" rel="stylesheet">
        <link href="css/product.css" rel="stylesheet" />
        <link href="css/productDetail.css" rel="stylesheet" />
        <!-- google font -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <!-- Spinner Start -->
    <div id="spinner"
         class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->

    <%@include file="components/navbar.jsp" %>

    <!-- Product End -->
    <!-- Product Start -->
    <div class="container mb-5" style="margin-top: 9rem; ">
        <div class="row ">
            <div class="col-md-3">
                <h2>${productDetail.name}</h2>
                <p>
                    ${productDetail.description}
                </p>
                <h5>${productDetail.price} VND</h5>

                <button class="btn btn-primary mt-4" data-bs-toggle="modal" data-bs-target="#addCart">
                    Add to cart
                </button>
                <div class="modal fade" id="addCart" tabindex="-1" aria-labelledby="addCart"
                     aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="addCart">
                                    ${productDetail.name}
                                </h5>
                            </div>
                            <div class="modal-body">
                                Added to cart successfully
                            </div>
                            <div class="modal-footer d-flex justify-content-around">
                                <a href="cart?action=continue&pid=${productDetail.productId}">Continue
                                    shopping</a>
                                <a href="cart?action=gocart&pid=${productDetail.productId}">Go to basket</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 text-center">
                <img class="w-75 h-100" src="${productDetail.productImage}" alt="" />
            </div>

            <!--Rating Start-->
            <div class="col-md-3 d-flex flex-column justify-content-start rating">
                <h3>Number of Ratings: ${reviews}</h3>
                <div class="skills">

                    <div class="rate mt-3">
                        <span class="fa fa-star checked" style="font-size: 25px;"></span>
                        <span class="fa fa-star " style="font-size: 25px;"></span>
                        <span class="fa fa-star " style="font-size: 25px;"></span>
                        <span class="fa fa-star" style="font-size: 25px;"></span>
                        <span class="fa fa-star" style="font-size: 25px;"></span>
                    </div>
                    <c:set var="percentage" value="${reviews1*100/reviews}" />
                    <h4 class="name">${Math.round(percentage)}%</h4>

                </div>

                <div class="skills">

                    <div class="rate mt-3">
                        <span class="fa fa-star checked" style="font-size: 25px;"></span>
                        <span class="fa fa-star checked " style="font-size: 25px;"></span>
                        <span class="fa fa-star " style="font-size: 25px;"></span>
                        <span class="fa fa-star" style="font-size: 25px;"></span>
                        <span class="fa fa-star" style="font-size: 25px;"></span>
                    </div>
                    <c:set var="percentage" value="${reviews2*100/reviews}" />
                    <h4 class="name">${Math.round(percentage)}%</h4>

                </div>
                <div class="skills">

                    <div class="rate mt-3">
                        <span class="fa fa-star checked" style="font-size: 25px;"></span>
                        <span class="fa fa-star checked " style="font-size: 25px;"></span>
                        <span class="fa fa-star checked " style="font-size: 25px;"></span>
                        <span class="fa fa-star" style="font-size: 25px;"></span>
                        <span class="fa fa-star" style="font-size: 25px;"></span>
                    </div>
                    <c:set var="percentage" value="${reviews3*100/reviews}" />
                    <h4 class="name">${Math.round(percentage)}%</h4>

                </div>
                <div class="skills">

                    <div class="rate mt-3">
                        <span class="fa fa-star checked" style="font-size: 25px;"></span>
                        <span class="fa fa-star checked " style="font-size: 25px;"></span>
                        <span class="fa fa-star checked " style="font-size: 25px;"></span>
                        <span class="fa fa-star checked" style="font-size: 25px;"></span>
                        <span class="fa fa-star" style="font-size: 25px;"></span>
                    </div>
                    <c:set var="percentage" value="${reviews4*100/reviews}" />
                    <h5 class="name">${Math.round(percentage)}%</h5>

                </div>
                <div class="skills">

                    <div class="rate mt-3">
                        <span class="fa fa-star checked" style="font-size: 25px;"></span>
                        <span class="fa fa-star checked " style="font-size: 25px;"></span>
                        <span class="fa fa-star checked " style="font-size: 25px;"></span>
                        <span class="fa fa-star checked" style="font-size: 25px;"></span>
                        <span class="fa fa-star checked" style="font-size: 25px;"></span>
                    </div>
                    <c:set var="percentage" value="${reviews5*100/reviews}" />
                    <h4 class="name">${Math.round(percentage)}%</h4>

                </div>
            </div>
            <!--Rating End-->

        </div>


    </div>
    <!-- Product End -->



    <!-- Related Product Start -->
    <div class="container">
        <h5>You may also like</h5>

        <div class="row mt-3 relateProduct">
            <c:forEach begin="0" end="3" items="${recommendations}" var="recommendations">
                <c:if test="${recommendations.productId != productDetail.productId}">
                    <div class="col-3">
                        <div class="product">
                            <img src="${recommendations.productImage}" alt="" class="productImg" />
                            <p class="text-truncate">${recommendations.name}</p>
                            <p>${recommendations.price} VNĐ</p>
                            <p class="text-end mb-0"><a href="productDetail?pid=${recommendations.productId}"
                                                        class="btn btn-primary rounded-pill">View Product</a></p>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>   

    </div>
    <div class="container">
        <div class="row mt-3">
            <form action="productDetail" method="post">
                <h4 class="mb-4">Leave a review</h4>
                <small>Your email address will not be published. Required fields are marked *</small>
                <div class="d-flex my-3">
                    <p class="mb-0 mr-2">Your Rating * :</p>
                    <div class="rate">
                        <input type="radio" id="star5" name="rate" value="5" />
                        <label for="star5" title="text">5 stars</label>
                        <input type="radio" id="star4" name="rate" value="4" />
                        <label for="star4" title="text">4 stars</label>
                        <input type="radio" id="star3" name="rate" value="3" />
                        <label for="star3" title="text">3 stars</label>
                        <input type="radio" id="star2" name="rate" value="2" />
                        <label for="star2" title="text">2 stars</label>
                        <input type="radio" id="star1" name="rate" value="1" />
                        <label for="star1" title="text">1 star</label>
                    </div>
                </div>
                <div class="form-group mb-0">
                    <input type="hidden" name="productID" value="${productDetail.productId}">
                    <input type="submit" value="Leave Your Review" class="btn btn-primary px-3">
                </div>
            </form>
        </div>
    </div>
    <!-- Related Product End -->

    <%@include file="components/footer.jsp" %>

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i
            class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <script src="js/app.js"></script>
    <script src="js/project/productDetail.js"></script>
</body>
</html>