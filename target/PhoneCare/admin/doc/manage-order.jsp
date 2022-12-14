<!DOCTYPE html>
<html lang="en">

<head>
  <title>Quản lý đơn hàng | ADMIN</title>
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
          <li class="breadcrumb-item"><a href="manage-order.jsp">Quản lý đơn hàng</a></li>
          <li class="breadcrumb-item"><a href="#">Danh sách đơn hàng</a></li>
        </ul>
        <div id="clock"></div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <div class="row element-button">
                <div class="col-sm-2">

                  <a class="btn btn-add btn-sm" href="add-order.jsp" title="Thêm"><i class="fas fa-plus"></i>
                    Tạo mới đơn hàng</a>
                </div>


                <div class="col-sm-2">
                  <a class="btn btn-delete btn-sm print-file" type="button" title="In" onclick="myApp.printTable()"><i
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
                    <th>ID đơn hàng</th>
                    <th>Tên khách hàng</th>
                    <th>Đơn hàng</th>
                    <th>Số lượng</th>
                    <th>Tổng tiền</th>
                    <th>Tình trạng</th>
                    <th>Tính năng</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                    <td>MD0837</td>
                    <td>Triệu Thanh Phú</td>
                    <td>Ép cổ cáp màn hình Samsung S8</td>
                    <td>2</td>
                    <td>3.180.000 đ</td>
                    <td><span class="badge bg-success">Hoàn thành</span></td>
                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa"><i class="fas fa-trash-alt"></i> </button>
                      <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                              data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                      </button>
                  </tr>
                  <tr>
                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                    <td>MĐ8265</td>
                    <td>Nguyễn Thị Ngọc Cẩm</td>
                    <td>Thay màn camera Iphone 14</td>
                    <td>1</td>
                    <td>2.800.000 đ</td>
                    <td><span class="badge bg-success">Hoàn thành</span></td>
                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa"><i class="fas fa-trash-alt"></i> </button>
                      <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                              data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                      </button>
                  </tr>
                  <tr>
                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                    <td>MT9835</td>
                    <td>Đặng Hoàng Phúc</td>
                    <td>Thay kính lưng Iphone 13 Pro-max</td>
                    <td>3 </td>
                    <td>2.750.000 đ</td>
                    <td><span class="badge bg-success">Hoàn thành</span></td>
                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa"><i class="fas fa-trash-alt"></i> </button>
                      <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                              data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                      </button>
                  </tr>
                  <tr>
                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                    <td>ER3835</td>
                    <td>Nguyễn Thị Mỹ Yến</td>
                    <td>Thay màn hình Iphone XS-Max</td>
                    <td>1 </td>
                    <td>2.570.000 đ</td>
                    <td><span class="badge bg-info">Chờ thanh toán</span></td>
                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa"><i class="fas fa-trash-alt"></i> </button>
                      <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                              data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                      </button>
                  </tr>
                  <tr>
                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                    <td>AL3947</td>
                    <td>Phạm Thị Ngọc</td>
                    <td>Thay loa Iphone 13</td>
                    <td>2 </td>
                    <td>1.440.000 đ</td>
                    <td><span class="badge bg-warning">Đang giao hàng</span></td>
                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa"><i class="fas fa-trash-alt"></i> </button>
                      <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                              data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                      </button>
                  </tr>
                  <tr>
                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                    <td>ZY2223</td>
                    <td>Ngô Thái An</td>
                    <td>Ép cổ màn hình SamSung S9 Plus</td>
                    <td>1 </td>
                    <td>1.890.000 đ</td>
                    <td><span class="badge bg-danger">Đã hủy</span></td>
                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa"><i class="fas fa-trash-alt"></i> </button>
                      <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                              data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                      </button>
                  </tr>
                  <tr>
                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                    <td>QZ1723</td>
                    <td>Đặng Vũ Nguyên Trung</td>
                    <td>Ép cổ màn hình SamSung S8 Plus</td>
                    <td>1 </td>
                    <td>1.690.000 đ</td>
                    <td><span class="badge bg-danger">Đã hủy</span></td>
                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa"><i class="fas fa-trash-alt"></i> </button>
                      <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                              data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                      </button>
                  </tr>
                  <tr>
                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                    <td>TA5743</td>
                    <td>Nguyễn Xuân Bách</td>
                    <td>Ép cổ màn hình Iphone 7 Plus</td>
                    <td>1 </td>
                    <td>1.190.000 đ</td>
                    <td><span class="badge bg-danger">Đã hủy</span></td>
                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa"><i class="fas fa-trash-alt"></i> </button>
                      <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                              data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                      </button>
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
                <h5>Chỉnh sửa thông tin đơn hàng cơ bản</h5>
              </span>
            </div>
          </div>
          <div class="row">
            <div class="form-group col-md-6">
              <label class="control-label">ID đơn hàng</label>
              <input class="form-control" type="text" required value="MD0837" disabled>
            </div>
            <div class="form-group col-md-6">
              <label class="control-label">Khách hàng</label>
              <input class="form-control" type="text" required value="Triệu Thanh Phú">
            </div>
            <div class="form-group  col-md-6">
              <label class="control-label">Đơn hàng</label>
              <input class="form-control" type="text" required value="Ép cổ cáp màn hình Samsung S8">
            </div>
            <div class="form-group col-md-6">
              <label class="control-label">Số lượng</label>
              <input class="form-control" type="number" required value="2">
            </div>
            <div class="form-group col-md-6">
              <label class="control-label">Tổng tiền</label>
              <input class="form-control" type="text" value="3.180.000 đ">
            </div>
            <div class="form-group col-md-6">
              <label for="exampleSelect1" class="control-label">Tình trạng</label>
              <select class="form-control" id="exampleSelect1">
                <option>Đã xử lý</option>
                <option>Đang chờ</option>
                <option>Đã hủy</option>
              </select>
            </div>
          </div>
          <BR>
          <a href="edit-order.jsp" style="    float: right;
        font-weight: 600;
        color: #ea0000;">Chỉnh sửa nâng cao</a>
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
  <script type="text/javascript">$('#sampleTable').DataTable();</script>
  <script>
    function deleteRow(r) {
      var i = r.parentNode.parentNode.rowIndex;
      document.getElementById("myTable").deleteRow(i);
    }
    jQuery(function () {
      jQuery(".trash").click(function () {
        swal({
          title: "Cảnh báo",

          text: "Bạn có chắc chắn là muốn xóa đơn hàng này?",
          buttons: ["Hủy bỏ", "Đồng ý"],
        })
          .then((willDelete) => {
            if (willDelete) {
              swal("Đã xóa thành công.!", {

              });
            }
          });
      });
    });
    oTable = $('#sampleTable').dataTable();
    $('#all').click(function (e) {
      $('#sampleTable tbody :checkbox').prop('checked', $(this).is(':checked'));
      e.stopImmediatePropagation();
    });

    //EXCEL
    // $(document).ready(function () {
    //   $('#').DataTable({

    //     dom: 'Bfrtip',
    //     "buttons": [
    //       'excel'
    //     ]
    //   });
    // });


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
    //In dữ liệu
    var myApp = new function () {
      this.printTable = function () {
        var tab = document.getElementById('sampleTable');
        var win = window.open('', '', 'height=700,width=700');
        win.document.write(tab.outerHTML);
        win.document.close();
        win.print();
      }
    }
    //     //Sao chép dữ liệu
    //     var copyTextareaBtn = document.querySelector('.js-textareacopybtn');

    // copyTextareaBtn.addEventListener('click', function(event) {
    //   var copyTextarea = document.querySelector('.js-copytextarea');
    //   copyTextarea.focus();
    //   copyTextarea.select();

    //   try {
    //     var successful = document.execCommand('copy');
    //     var msg = successful ? 'successful' : 'unsuccessful';
    //     console.log('Copying text command was ' + msg);
    //   } catch (err) {
    //     console.log('Oops, unable to copy');
    //   }
    // });


    //Modal
    $("#show-emp").on("click", function () {
      $("#ModalUP").modal({ backdrop: false, keyboard: false })
    }); function save() {

      swal("Đã lưu thành công.!", {});

    }
  </script>
</body>

</html>