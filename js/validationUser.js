function validate() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    //login with user pseudo
    if (username == "user" && password == "123456") {
        swal({
            title: "",
            text: "Xin chào user",
            icon: "success",
            close: true,
            button: false,
        });
        setTimeout(() => {
            window.location = "./profile.html";
        }, 1000);
        user = {
            username: username,
            avatar: "./images/user/avatar.png",
        }
        localStorage.setItem('user', encodeURIComponent(JSON.stringify(user)));
        return true;

    }
    // check if has field null
    if (username == "" && password == "") {
        swal({
            title: "",
            text: "Bạn chưa điền đầy đủ thông tin đăng nhập...",
            icon: "error",
            close: true,
            button: "Thử lại",
        });

        return false;

    }
    // check null pass and user correct
    if (username == "user" && password == "") {
        swal({
            title: "",
            text: "Bạn chưa nhập mật khẩu...",
            icon: "warning",
            close: true,
            button: "Thử lại",
        });
        return false;
    }
    // check null username
    if (username == null || username == "") {
        swal({
            title: "",
            text: "Tài khoản đang để trống...",
            icon: "warning",
            close: true,
            button: "Thử lại",
        });
        return false;
    }
    // check null pass
    if (password == null || password == "") {
        swal({
            title: "",
            text: "Mật khẩu đang để trống...",
            icon: "warning",
            close: true,
            button: "Thử lại",
        });
        return false;
    }
    // check null
    else {
        swal({
            title: "",
            text: "Sai thông tin đăng nhập hãy kiểm tra lại...",
            icon: "error",
            close: true,
            button: "Thử lại",
        });
        return true;
    };
}

var user = JSON.parse(decodeURIComponent(localStorage.getItem('user')));

if (user) {
    var textHtml = `
        <ul class="navbar-nav mx-5">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle aaaa" href="product.html" id="navbarDropdownUser"
                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <p>${user.username}<i class="fa fa-angle-down"></i>   
                    <img src=${user.avatar} alt="" width=50/></p>
                </a>   

                <div class="dropdown-menu" aria-labelledby="navbarDropdownUser" style="border:0;">
                    <a class="dropdown-item" href="profile.html" title="">Thông tin người dùng</a>
                    <a class="dropdown-item" href="booked.html" uk-toggle="target: #offcanvas-flip3" title="">Lịch sử đặt hẹn</a>
                    <a class="dropdown-item" href="signin.html" title="" onclick=logout()>Đăng xuất</a>
                </div>
            </li>
        </ul>
            `

    document.querySelector('nav .user').innerHTML += textHtml;
}

function logout() {
    if (user)
        localStorage.removeItem('user');
}