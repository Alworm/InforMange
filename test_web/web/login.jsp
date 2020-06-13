<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="./assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Login Page - Now UI Kit by Creative Tim</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
<%--    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />--%>
    <!-- CSS Files -->
    <link href="./assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="./assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="./assets/css/demo.css" rel="stylesheet" />
    <!-- Canonical SEO -->
    <link rel="canonical" href="" />
    <!--  Social tags      -->
    <meta name="keywords" content="">
    <meta name="description" content="">
    <script type="text/javascript">
        //切换图片
        function refreshCode() {
            var vcode = document.getElementById("vcode");
            vcode.src = "${pageContext.request.contextPath}/checkCode?"+new Date().getTime();
        }
    </script>


</head>

<body class="login-page sidebar-collapse">

<div class="page-header" filter-color="orange">
    <div class="page-header-image" style="background-image:url(./assets/img/login.jpg)"></div>
    <div class="container">
        <div class="col-md-4 content-center">
            <div class="card card-login card-plain">
                <form class="form" method="post" action="${pageContext.request.contextPath}/LoginServlet">
                    <div class="header header-primary text-center">
                        <div class="logo-container">
                            <img src="./assets/img/now-logo.png" alt="">
                        </div>
                    </div>
                    <div class="content">
                        <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
                            <input type="text" class="form-control" name="username" placeholder="用户名">
                        </div>
                        <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons text_caps-small"></i>
                                </span>
                            <input type="password" placeholder="密码" name="password" class="form-control" />
                        </div>
                        <%-- start 验证码--%>
<%--                        <div class="form-inline">--%>
<%--                            <label for="vcode">验证码：</label>--%>
<%--                            <input type="text" name="verifycode" class="form-control" id="verifycode" placeholder="请输入验证码" style="width: 120px;"/>--%>
<%--                            <a href="javascript:refreshCode()">--%>
<%--                                <img src="${pageContext.request.contextPath}/checkCode" title="看不清点击刷新" id="vcode"/>--%>
<%--                            </a>--%>
<%--                        </div>--%>
                        <%-- end 验证码--%>

                    </div>
                    <%--登录--%>
                    <div class="footer text-center">
                        <input type="submit" class="btn btn-primary btn-round btn-lg btn-block">
                    </div>
                    <div>

                    </div>
                    <%--注册--%>
                    <div class="float-left">
                        <h6>
                            <a href="#pablo" class="link">注册</a>
                        </h6>
                    </div>
                    <%--忘记密码--%>
                    <div class="float-right">
                        <h6>
                            <a href="#pablo" class="link">忘记密码？</a>
                        </h6>
                    </div>
                    <!-- 出错显示的信息框 -->
                    <div class="alert alert-warning alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" >
                            <span>&times;</span>
                        </button>
                        <strong>${login_msg}</strong>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>
</body>
<!--   Core JS Files   -->
<script src="./assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="./assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="./assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="./assets/js/plugins/bootstrap-switch.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="./assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
<script src="./assets/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Share Library etc -->
<script src="./assets/js/plugins/jquery.sharrre.js" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="./assets/js/now-ui-kit.js?v=1.1.0" type="text/javascript"></script>

</html>ng="en">


