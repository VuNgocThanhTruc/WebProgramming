<!DOCTYPE html>
<html lang="en">

<head>
    <title>Quản lý sản phẩm | ADMIN</title>
    <link href="../../images/logo/logo_PhoneCare.png" rel="shortcut icon" type="image/x-icon">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <!-- or -->
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

</head>

<body onload="time()" class="app sidebar-mini rtl">
<!-- Navbar-->
<header class="app-header">
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                    aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">


        <!-- User Menu-->
        <li><a class="app-nav__item" href="../login.html"><i class='bx bx-log-out bx-rotate-180'></i> </a>

        </li>
    </ul>
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="../images/admin.png" width="50px"
                                        alt="User Image">
        <div>
            <p class="app-sidebar__user-name"><b>Admin</b></p>
            <p class="app-sidebar__user-designation">Chào mừng bạn trở lại</p>
        </div>
    </div>
    <hr>
    <ul class="app-menu">

        <li><a class="app-menu__item active " href="index.jsp"><i class='app-menu__icon bx bx-tachometer'></i><span
                class="app-menu__label">Bảng điều khiển</span></a></li>
        <li><a class="app-menu__item" href="manage-customer.jsp"><i class='app-menu__icon bx bx-user-voice'></i><span
                class="app-menu__label">Quản lý khách hàng</span></a></li>
        <li><a class="app-menu__item" href="manage-product.jsp"><i
                class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Quản lý sản phẩm</span></a></li>
        <li><a class="app-menu__item" href="manage-order.jsp"><i class='app-menu__icon bx bx-task'></i><span
                class="app-menu__label">Quản lý đơn hàng</span></a></li>
        <li><a class="app-menu__item" href="manage-booked.jsp"><i class='app-menu__icon bx bx-calendar-check'></i><span
                class="app-menu__label">Quản lý lịch đã đặt </span></a></li>
        <li><a class="app-menu__item" href="manage-blog.jsp"><i class='app-menu__icon bx bx-news'></i><span
                class="app-menu__label">Quản lý tin tức </span></a></li>


    </ul>

</aside>
<main class="app-content">
    <div class="app-title">
        <ul class="app-breadcrumb breadcrumb side">
            <li class="breadcrumb-item">Quản lý sản phẩm</li>
            <li class="breadcrumb-item"><a href="#">Danh sách sản phẩm</a></li>
        </ul>
        <div id="clock"></div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">
                    <div class="row element-button">
                        <div class="col-sm-2">

                            <a class="btn btn-add btn-sm" href="add-booked.jsp" title="Thêm"><i
                                    class="fas fa-plus"></i>
                                Tạo mới </a>
                        </div>
                        <div class="col-sm-2">
                            <a class="btn btn-delete btn-sm print-file" type="button" title="In"
                               onclick="myApp.printTable()"><i
                                    class="fas fa-print"></i> In dữ liệu</a>
                        </div>

                        <div class="col-sm-2">
                            <a class="btn btn-delete btn-sm" type="button" title="Xóa" onclick="myFunction(this)"><i
                                    class="fas fa-trash-alt"></i> Xóa tất cả </a>
                        </div>
                    </div>
                    <table class="table table-hover table-bordered" id="sampleTable">
                        <thead>
                        <tr>
                            <th width="10"><input type="checkbox" id="all"></th>
                            <th>ID</th>
                            <th>Tên sản phẩm</th>
                            <th>Ảnh</th>
                            <th>Số lượng</th>
                            <th>Ngày hẹn</th>
                            <th>Cửa hàng</th>
                            <th>Tình trạng</th>
                            <th>Tổng tiền</th>
                            <th>Danh mục</th>
                            <th>Chức năng</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay dây nút nguồn Xiaomi Redmi Note 11 Pro</td>
                            <td><img
                                    src="../../images/product/thay-day-nut-nguon-xiaomi-redmi-note-11-pro_1667623363.png"
                                    alt="" width="100px;"></td>
                            <td>1</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>1.690.000
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>

                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay cụm đuôi sạc Samsung Galaxy A02 A022F</td>
                            <td><img
                                    src="../../images/product/thay-cum-duoi-sac-samsung-galaxy-a02-a022f_1667623123.png"
                                    alt="" width="100px;"></td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>1.690.000</td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Độ vỏ iPhone 12 Pro</td>
                            <td><img src="../../images/product/do-vo-iphone-12-pro_1667622426.png" alt=""
                                     width="100px;"></td>
                            <td>50</td>

                            </td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>300.000</td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Độ vỏ iPhone 13 Pro</td>
                            <td><img src="../../images/product/do-vo-iphone-13-pro_1667622253.png" alt=""
                                     width="100px;"></td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>


                            <td>2.700.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Độ vỏ iPhone 13 Pro Max</td>
                            <td><img src="../../images/product/do-vo-iphone-13-pro-max_1667622099.png" alt=""
                                     width="100px;"></td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>3.100.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay loa iPhone XR</td>
                            <td><img src="../../images/product/thay-loa-iphone-xr_1667543636.png" alt="" width="100px;">
                            </td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>3.800.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Asus Zenfone Max Plus (M1) ZB570TL</td>
                            <td><img src="../../images/product/thay-pin-asus-zenfone-max-plus-m1-zb570tl_1667468565.png"
                                     alt="" width="100px;"></td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>300.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay cảm ứng Asus Zenfone Max Plus (M1) ZB570TL
                            </td>
                            <td><img src="../../images/product/thay-cam-ung-asus-zenfone-max-plus-m1-zb570tl_1667468452.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>300.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay vỏ Samsung Galaxy A7 2018 A750F
                            </td>
                            <td><img src="../../images/product/thay-vo-samsung-galaxy-a7-2018-a750f_1667468169.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>350.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin ZTE nubia Red Magic 5G
                            </td>
                            <td><img src="../../images/product/thay-pin-zte-nubia-red-magic-5g_1667298261.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>400.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Huawei Nova 2 Lite
                            </td>
                            <td><img src="../../images/product/thay-pin-huawei-nova-2-lite_1667380424.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>280.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay chân sạc Huawei Nova 2 Lite
                            </td>
                            <td><img src="../../images/product/thay-chan-sac-huawei-nova-2-lite_1667380708.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>300.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay lưng Nokia 5.1 Plus (Nokia X5, TA 1102, TA 1105, TA 1120)
                            </td>
                            <td><img src="../../images/product/thay-lung-nokia-51-plus-nokia-x5-ta-1102-ta-1105-ta-1120_1667296003.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>200.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay vỏ Xiaomi Redmi Note 10 4G
                            </td>
                            <td><img src="../../images/product/thay-vo-xiaomi-redmi-note-10-4g_1667295745.png" alt=""
                                     width="100px;"></td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>350.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay cụm dây Volume, nút nguồn Xiaomi Pocophone F1
                            </td>
                            <td><img src="../../images/product/thay-cum-day-volume-nut-nguon-xiaomi-pocophone-f1_1667295401.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>200.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay vỏ Xiaomi Pocophone F1
                            </td>
                            <td><img src="../../images/product/thay-vo-xiaomi-pocophone-f1_1667295150.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>390.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay màn hình Samsung Galaxy Z Fold3
                            </td>
                            <td><img src="../../images/product/thay-man-hinh-samsung-galaxy-z-fold3_1667211393.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>14.000.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay nút nguồn Samsung Galaxy S10 G973
                            </td>
                            <td><img src="../../images/product/thay-nut-nguon-samsung-galaxy-s10-g973_1667272872.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td>22/10/2022</td>
                            <td>P. Bình An, Quận 2</td>
                            <td><span class="badge bg-info">Chờ thanh toán</span></td>
                            <td>100.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</main>

<!--
MODAL
-->
<div class="modal fade" id="ModalUP" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static"
     data-keyboard="false">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <div class="row">
                    <div class="form-group  col-md-12">
              <span class="thong-tin-thanh-toan">
                <h5>Chỉnh sửa thông tin cơ bản</h5>
              </span>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class="control-label">ID </label>
                        <input class="form-control" type="number" value="71309005">
                    </div>
                    <div class="form-group col-md-6">
                        <label class="control-label">Tên sản phẩm</label>
                        <input class="form-control" type="text" required
                               value="Thay dây nút nguồn Xiaomi Redmi Note 11 Pro	">
                    </div>
                    <div class="form-group  col-md-6">
                        <label class="control-label">Số lượng</label>
                        <input class="form-control" type="number" required value="1">
                    </div>
                    <div class="form-group col-md-6 ">
                        <label class="control-label">Ngày hẹn</label>
                        <input class="form-control" type="date" value="2020-10-20">

                    </div>
                    <div class="form-group col-md-6">
                        <label class="control-label">Tổng tiền</label>
                        <input class="form-control" type="text" value="300.000đ">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="exampleSelect1" class="control-label">Trình trạng</label>
                        <select class="form-control" id="exampleSelect1">
                            <option>Chờ thanh toán</option>
                            <option>Đã thanh toán</option>
                            <option>Đã hủy</option>

                        </select>
                    </div>
                </div>
                <BR>
                <a href="edit-booked.jsp" style="float: right;font-weight: 600;color: #ea0000;">Chỉnh sửa sản phẩm nâng
                    cao</a>
                <BR>
                <BR>
                <button class="btn btn-save" type="button" onclick="save()">Lưu lại</button>
                <a class="btn btn-cancel" data-dismiss="modal" href="#">Hủy bỏ</a>
                <BR>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>
<!--
MODAL
-->

<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="src/jquery.table2excel.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<!-- Page specific javascripts-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
<!-- Data table plugin-->
<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
    $('#sampleTable').DataTable();

    //Thời Gian
    function time() {
        var today = new Date();
        var weekday = new Array(7);
        weekday[0] = "Chủ Nhật";
        weekday[1] = "Thứ Hai";
        weekday[2] = "Thứ Ba";
        weekday[3] = "Thứ Tư";
        weekday[4] = "Thứ Năm";
        weekday[5] = "Thứ Sáu";
        weekday[6] = "Thứ Bảy";
        var day = weekday[today.getDay()];
        var dd = today.getDate();
        var mm = today.getMonth() + 1;
        var yyyy = today.getFullYear();
        var h = today.getHours();
        var m = today.getMinutes();
        var s = today.getSeconds();
        m = checkTime(m);
        s = checkTime(s);
        nowTime = h + " giờ " + m + " phút " + s + " giây";
        if (dd < 10) {
            dd = '0' + dd
        }
        if (mm < 10) {
            mm = '0' + mm
        }
        today = day + ', ' + dd + '/' + mm + '/' + yyyy;
        tmp = '<span class="date"> ' + today + ' - ' + nowTime +
            '</span>';
        document.getElementById("clock").innerHTML = tmp;
        clocktime = setTimeout("time()", "1000", "Javascript");

        function checkTime(i) {
            if (i < 10) {
                i = "0" + i;
            }
            return i;
        }
    }
</script>
<script>
    function deleteRow(r) {
        var i = r.parentNode.parentNode.rowIndex;
        document.getElementById("myTable").deleteRow(i);
    }

    jQuery(function () {
        jQuery(".trash").click(function () {
            swal({
                title: "Cảnh báo",
                text: "Bạn có chắc chắn là muốn xóa sản phẩm này?",
                buttons: ["Hủy bỏ", "Đồng ý"],
            })
                .then((willDelete) => {
                    if (willDelete) {
                        swal("Đã xóa thành công.!", {});
                    }
                });
        });
    });
    oTable = $('#sampleTable').dataTable();
    $('#all').click(function (e) {
        $('#sampleTable tbody :checkbox').prop('checked', $(this).is(':checked'));
        e.stopImmediatePropagation();
    });

    function save() {

        swal("Đã lưu thành công.!", {});

    }
</script>
</body>
