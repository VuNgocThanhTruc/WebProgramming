<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>
<%@include file="../../common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>

    <%@include file="../../common/web/head.jsp" %>
    <link rel="stylesheet" href="././css/sign.css">
    <title>Đăng nhập | Phone Care</title>

</head>

<body>
<%@include file="../../common/web/header.jsp" %>
<!--Content-->
<div class="content">
    <section class="signin ">
        <div class="container">
            <div class="signin-left">
                <div class="sign-title">
                    <h1>Đăng nhập</h1>
                </div>
            </div>
            <div class="signin-right " id="a-sign">
                <form action="">
                    <div class="username form-control1 ">
                        <input type="email" id="username" name="username" placeholder="Email/SĐT">
                    </div>
                    <div class="password form-control1">
                        <input type="password" id="password" name="password" placeholder="Mật khẩu">
                        <!--                        <div class="error" style="position: absolute; bottom: 0;background: #fff; padding:10px; border:1px solid #ccc; color: red">Please fill out this field </div>-->
                    </div>
                    <div class="submit">
                        <input type="button" value="Đăng nhập" id="submit" onclick="validate()"/>
                        <div class="forgetpassword">
                            <a id="quenmk">Quên mật khẩu?</a> hoặc <a href="signup.jsp">Đăng ký</a>
                        </div>
                    </div>
                </form>
            </div>
            <div class="signin-right " id="b-sign">
                <form action="">
                    <div class="username form-control1 ">
                        <h2>Phục hồi mật khẩu</h2>
                    </div>
                    <div class="password form-control1">
                        <input type="text" id="passwords"
                               placeholder="Nhập email của bạn. Đợi vài giây kiểm tra email và nhận mật khẩu mới.">
                    </div>

                    <div class="submit">
                        <input class="btn" type="submit" value="Gửi">
                        <div class="forgetpassword">
                            <a href="" id="huy">Hủy</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>


</div>

<%@include file="../../common/web/footer.jsp" %>

</body>

</html>