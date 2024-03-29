<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.ProductModel" %><%--
  Created by IntelliJ IDEA.
  User: vutru
  Date: 12/8/2022
  Time: 1:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@include file="../../common/taglib.jsp" %>

<!DOCTYPE html>

<html>
<head>
    <%@include file="../../common/web/head.jsp" %>
    <title>Điện thoại | Phone Care</title>
    <link rel="stylesheet" href="css/product.css">
</head>

<body>

<%@include file="../../common/web/header.jsp" %>
<%
    String checkTagBrand = (String) request.getParameter("brand");

%>

<div class="breadcrumb-shop">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5">
                <ol class="breadcrumb breadcrumb-arrows">
                    <li>
                        <a href="/">
                            <span>Trang chủ</span>
                        </a>
                    </li>
                    <li>
                        <a href="product.jsp">
                            <span>Điện thoại</span>
                        </a>
                    </li>
                    <li>
                        <span><span style="color: #F28102">Tất cả sản phẩm</span></span>
                    </li>
                </ol>
            </div>
        </div>
    </div>
</div>

<!--List Prodct-->
<div class="container" style="margin-top: 50px;">
    <div class="row">

        <%--        sidebar --%>
        <div class="col-md-3 col-sm-12 col-xs-12 sidebar-fix">
            <div class="wrap-filter">
                <div class="box_sidebar">
                    <div class="block left-module">
                        <div class=" filter_xs">
                            <div class="group-menu">
                                <div class="title_block d-block d-sm-none d-none d-sm-block d-md-none"
                                     data-toggle="collapse"
                                     href="#collapseExample1" role="button" aria-expanded="false"
                                     aria-controls="collapseExample1">
                                    Danh mục sản phẩm
                                    <span><i class="fa fa-angle-down" data-toggle="collapse" href="#collapseExample1"
                                             role="button"
                                             aria-expanded="false" aria-controls="collapseExample1"></i></span>
                                </div>
                                <div class="block_content layered-category collapse" id="collapseExample1">
                                    <div class="layered-content card card-body" style="border:0;padding:0">
                                        <ul class="menuList-links">
                                            <li class=""><a href="/"
                                                            title="Trang chủ"><span>Trang chủ</span></a></li>

                                            <li class="has-submenu level0 ">
                                                <a title="Điện thoại">Điện thoại<span class="icon-plus-submenu"
                                                                                      data-toggle="collapse"
                                                                                      href="#collapseExample"
                                                                                      role="button"
                                                                                      aria-expanded="false"
                                                                                      aria-controls="collapseExample"></span></a>
                                                <div class="collapse" id="collapseExample">
                                                    <div class="card card-body" style="border:0;padding-top:0;">
                                                        <ul class="menu-product">
                                                            <%--                                                            <%--%>
                                                            <%--                                                                for (CategoryModel brand : listBrand) {--%>
                                                            <%--                                                            %>--%>
                                                            <%--                                                            <li class="px-2 <%=brand.getName().toLowerCase().equalsIgnoreCase(checkTagBrand)?"active":""%>">--%>
                                                            <%--                                                                <a href="category?brand=<%=brand.getName().toLowerCase()%>"--%>
                                                            <%--                                                                   title="Sửa điện thoại <%=brand.getName()%>">--%>
                                                            <%--                                                                    Sửa điện thoại <%=brand.getName()%>--%>
                                                            <%--                                                                </a>--%>
                                                            <%--                                                            </li>--%>
                                                            <%--                                                            <% }%>--%>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="has-submenu level0 ">
                                                <a title="Dịch vụ">Dịch vụ<span class="icon-plus-submenu"
                                                                                data-toggle="collapse"
                                                                                href="#collapseExample3" role="button"
                                                                                aria-expanded="false"
                                                                                aria-controls="collapseExample3"></span></a>
                                                <div class="collapse" id="collapseExample3">
                                                    <div class="card card-body" style="border:0;padding-top:0;">
                                                        <ul class="menu-product">
                                                            <li class="">
                                                                <a href="#" title="Thay pin">
                                                                    Thay pin
                                                                </a>
                                                            </li>
                                                            <li class="">
                                                                <a href="#" title="Thay màn hình">
                                                                    Thay màn hình
                                                                </a>
                                                            </li>
                                                            <li class="">
                                                                <a href="#" title="Thay camera">
                                                                    Thay camera
                                                                </a>
                                                            </li>
                                                            <li class="">
                                                                <a href="#" title="Thay vỏ">
                                                                    Thay vỏ
                                                                </a>
                                                            </li>
                                                            <li class="">
                                                                <a href="#" title="Thay loa">
                                                                    Thay loa
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class=""><a href="introduce.jsp"
                                                            title="Giới thiệu"><span>Giới thiệu</span></a></li>
                                            <li class=""><a href="blog.jsp" title="Blog"><span>Blog</span></a></li>
                                            <li class=""><a href="contact.jsp" title="Liên hệ"><span>Liên hệ</span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="layered">
                                <p class="title_block d-block d-sm-none d-none d-sm-block d-md-none"
                                   data-toggle="collapse"
                                   href="#collapseExample2" role="button" aria-expanded="false"
                                   aria-controls="collapseExample2">
                                    Bộ lọc sản phẩm
                                    <span><i class="fa fa-angle-down" data-toggle="collapse" href="#collapseExample2"
                                             role="button"
                                             aria-expanded="false" aria-controls="collapseExample2"></i></span>
                                </p>
                                <div class="block_content collapse" id="collapseExample2">
                                    <div class="group-filter card card-body" style="border:0;padding:0"
                                         aria-expanded="true">
                                        <div class="layered_subtitle dropdown-filter"><span>Thương hiệu</span><span
                                                class="icon-control"><i class="fa fa-minus"></i></span></div>
                                        <div class="layered-content bl-filter filter-brand">
                                            <ul class="check-box-list">
                                                <li>
                                                    <input type="checkbox" id="data-brand-p1" value="Iphone">
                                                    <label for="data-brand-p1">Iphone</label>
                                                </li>

                                                <li>
                                                    <input type="checkbox" id="data-brand-p2" value="Samsung">
                                                    <label for="data-brand-p2">Samsung</label>
                                                </li>
                                                <li>
                                                    <input type="checkbox" id="data-brand-p3" value="Xiaomi">
                                                    <label for="data-brand-p3">Xiaomi</label>
                                                </li>
                                                <li>
                                                    <input type="checkbox" id="data-brand-p4" value="Oppo">
                                                    <label for="data-brand-p4">Oppo</label>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                    <div class="group-filter card card-body" style="border:0;padding:0"
                                         aria-expanded="true">
                                        <div class="layered_subtitle dropdown-filter"><span>Dịch vụ</span><span
                                                class="icon-control"><i
                                                class="fa fa-minus"></i></span></div>
                                        <div class="layered-content bl-filter filter-brand">
                                            <ul class="check-box-list">
                                                <li>
                                                    <input type="checkbox" id="data-brand-p2-1" value="Iphone">
                                                    <label for="data-brand-p1">Thay pin</label>
                                                </li>

                                                <li>
                                                    <input type="checkbox" id="data-brand-p2-2" value="Thay màn hình">
                                                    <label for="data-brand-p2">Thay màn hình</label>
                                                </li>
                                                <li>
                                                    <input type="checkbox" id="data-brand-p2-3" value="Thay camera">
                                                    <label for="data-brand-p3">Thay camera</label>
                                                </li>
                                                <li>
                                                    <input type="checkbox" id="data-brand-p2-4" value="Thay vỏ">
                                                    <label for="data-brand-p4">Thay vỏ</label>
                                                </li>
                                                <li>
                                                    <input type="checkbox" id="data-brand-p2-5" value="Thay loa">
                                                    <label for="data-brand-p4">Thay loa</label>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                    <div class="group-filter" aria-expanded="true">
                                        <div class="layered_subtitle dropdown-filter"><span>Giá sản phẩm</span><span
                                                class="icon-control"><i class="fa fa-minus"></i></span></div>
                                        <div class="layered-content bl-filter filter-price">
                                            <ul class="check-box-list">
                                                <li>
                                                    <input type="checkbox" id="p1">
                                                    <label for="p1">
                                                        <span>Dưới</span> 500,000₫
                                                    </label>
                                                </li>
                                                <li>
                                                    <input type="checkbox" id="p2">
                                                    <label for="p2">
                                                        500,000₫ - 1,000,000₫
                                                    </label>
                                                </li>
                                                <li>
                                                    <input type="checkbox" id="p3">
                                                    <label for="p3">
                                                        1,000,000₫ - 5,000,000₫
                                                    </label>
                                                </li>
                                                <li>
                                                    <input type="checkbox" id="p4">
                                                    <label for="p4">
                                                        5,000,000₫ - 10,000,000₫
                                                    </label>
                                                </li>
                                                <li>
                                                    <input type="checkbox" id="p5">
                                                    <label for="p5">
                                                        <span>Trên</span> 10,000,000₫
                                                    </label>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>


                                    <div class="group-filter" aria-expanded="true">
                                        <div class="layered_subtitle dropdown-filter"><span>Loại</span><span
                                                class="icon-control"><i
                                                class="fa fa-minus"></i></span></div>
                                        <div class="layered-content filter-size s-filter">

                                            <ul class="check-box-list clearfix">

                                                <li>
                                                    <input type="checkbox" id="data-size-p1">
                                                    <label for="data-size-p1">Cũ</label>
                                                </li>

                                                <li>
                                                    <input type="checkbox" id="data-size-p2">
                                                    <label for="data-size-p2">Mới</label>
                                                </li>

                                                <li>
                                                    <input type="checkbox" id="data-size-p3">
                                                    <label for="data-size-p3">Zin</label>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--       list product--%>
        <div class="col-md-9 col-sm-12 col-xs-12">
            <div class="wrap-collection-title row">
                <div class="col-md-8 col-sm-12 col-xs-12">
                    <h1 class="title">
                        Tất cả sản phẩm
                    </h1>
                    <div class="alert-no-filter"></div>
                </div>
                <div class="col-md-4 d-sm-none d-md-block d-none d-sm-block" style="float: left">
                    <div class="option browse-tags">
              <span class="custom-dropdown custom-dropdown--grey">
                <select class="sort-by custom-dropdown__select">
                  <option value="price-ascending">Giá: Tăng dần</option>
                  <option value="price-descending">Giá: Giảm dần
                  </option>
                  <option value="title-ascending">Tên: A-Z</option>
                  <option value="title-descending">Tên: Z-A</option>
                  <option value="created-ascending">Cũ nhất
                  </option>
                  <option value="created-descending">Mới nhất
                  </option>
                  <option value="best-selling">Bán chạy nhất
                  </option>
                  <option value="quantity-descending">Tồn kho: Giảm dần</option>
                </select>
              </span>
                    </div>
                </div>
            </div>

            <%--            print list product--%>
            <div class="row list-product">

                <%List<ProductModel> listProduct = (List<ProductModel>) request.getAttribute("listProduct");%>
                <%
                    if (listProduct.isEmpty()) {
                %>
                <div>Không tìm thấy sản phẩm!</div>
                <%
                } else { %>
                <% for (ProductModel product : listProduct) { %>
                <div class="col-md-3 col-sm-6 col-xs-6 col-6 mb-5">
                    <div class="block-banner-category">
                        <div class="product-img fade-box">
                            <a href="detail-product?id-product=<%=product.getId()%>" title="" class="img-resize">
                                <img src="images/product/<%=product.getAvatar()%>" alt="" class="lazyloaded">
                            </a>
                        </div>
                        <div class="product-detail clearfix">
                            <form class="mini-cart" action="${pageContext.request.contextPath}/cart?action=add-to-cart" method="post">
                                <fieldset>
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="add" value="1">
                                    <input type="hidden" name="business" value="">
                                    <input type="hidden" name="image" value="<%=product.getAvatar()%>">
                                    <input type="hidden" name="item_name" value="<%=product.getName()%>">
                                    <input type="hidden" name="amount" value="<%=product.getPrice()%>">
                                    <input type="hidden" name="discount_amount" value="10000">
                                    <input type="hidden" name="currency_code" value="VND">
                                    <input type="hidden" name="id_item" value="<%=product.getId()%>">
                                    <input type="hidden" name="return" value=" ">
                                    <input type="hidden" name="cancel_return" value=" ">
                                    <button class="btn btn-cart" type="submit"><i
                                            class="icon-header fas fa-shopping-cart"
                                            aria-hidden="true" onclick="addBtnCart()"></i>
                                    </button>
                                </fieldset>
                            </form>

                            <div class="pro-text">
                                <a style=" color: black;
                                                    font-size: 14px;text-decoration: none;"
                                   href="detail-product?id-product=<%=product.getId()%>"
                                   title="" inspiration pack>
                                    <%=product.getName()%>
                                </a>
                            </div>
                            <div class="pro-price">
                                <p class=""><%=product.getPrice()%>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                        }
                    }
                %>

            </div>

            <!-- pagination -->
            <div class="sortpagibar pagi clearfix text-center">
                <div id="pagination" class="clearfix">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 d-flex align-items-center justify-content-center">
                        <button class="btn btn-prev-slider">
                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                                 x="0px"
                                 y="0px" viewBox="0 0 31 10"
                                 style="enable-background:new 0 0 31 10; width: 31px; height: 10px;"
                                 xml:space="preserve">
                  <polygon points="31,5 25,0 25,4 0,4 0,6 25,6 25,10 "></polygon>
                </svg>
                        </button>
                        <ul class="list_page">

                        </ul>
                        <
                        button
                        class="
                        btn btn-next-slider">
                        <svg
                                version="
                    1.1" xmlns="
                    http://www.w3.org/2000/svg"
                                x="0px"
                                y="0px
                    " viewBox="0 0 31 10"
                                style="enable-background:new 0 0 31 10; width: 31px; height: 10px;"
                                xml:space="preserve">
                  <polygon points="31,5 25,0 25,4 0,4 0,6 25,6 25,10 "></polygon>
                </svg>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="../../common/web/footer.jsp" %>

</body>

</html>
