

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Mido</title>
        <link rel="stylesheet" href="../css/base.css" />
        <link rel="stylesheet" href="../css/main.css" />
        <link rel="stylesheet" href="../css/profile.css" />
        <link rel="stylesheet" href="../css/changepassword.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="shortcut icon" href="../img/icon.png" type="image/x-icon">
    </head>

    <body>
        <div id="main">
            <form id="forget-form" action="/mido/forgetpassword" method="get">

            </form>
            <!-- header -->
            <header class="header">
                <nav class="header-navbar container">
                    <ul class="header-navbar__list">
                        <li class="header-navbar__item">Kênh người bán</li>
                        <li class="header-navbar__item header__navbar-item--separate">Trở thành người bán Mido</li>
                        <li class="header-navbar__item header__navbar-item--separate">Tải ứng dụng</li>
                        <li class="header-navbar__item header__navbar-item--separate">
                            <span class="header__navbar-title">Kết nối</span>
                            <a href="" class="header__navbar-icon-link">
                                <i class="header__navbar-icon fa-brands fa-facebook"></i>
                            </a>
                            <a href="" class="header__navbar-icon-link">
                                <i class="header__navbar-icon fa-brands fa-instagram"></i>
                            </a>
                        </li>

                    </ul>
                    <ul class="header-navbar__list">
                        <li class="header-navbar__item">
                            <a href="#" class="header-navbar__item-link">
                                <i class="right-icon fa-solid fa-bell"></i>
                                Thông báo
                            </a>
                        </li>
                        <li class="header-navbar__item">

                            <a href="help" class="header-navbar__item-link">
                                <i class="right-icon fa-solid fa-circle-question"></i>
                                Hỗ trợ
                            </a>
                        </li>
                        <c:if test="${cookie.username.value == null}">
                            <li class="header-navbar__item">
                                <a href="signup" class="header-navbar__item-link">Đăng ký</a>
                            </li>
                            <div class="navbar__item-separator"></div>
                            <li class="header-navbar__item">
                                <a href="login" class="header-navbar__item-link">Đăng nhập</a>
                            </li>
                        </c:if>

                        <c:if test="${cookie.username.value != null}">
                            <li class="header-navbar__item header-navbar__user">
                                <img src="/mido/${user.getImg()}" alt=""
                                     class="header__navbar-user-img">
                                <a href="profile"
                                   class="header-navbar__item-link header__navbar-user-name">${cookie.username.value}</a>
                            </li>
                            <li class="header-navbar__item">
                                <a href="/mido/logout" class="header-navbar__item-link">Đăng xuất</a>
                            </li>
                        </c:if>
                    </ul>
                </nav>

                <div class="header-with-search container">
                    <a href="/mido" class="header-with-search__logo-section">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 389.26 318.9">
                        <path
                            d="M384.32,72.29,337.53,54.71l-6.95,11.53V264.15l6.95,12.13,46.79-13.51,4.94-13.12V85.85Zm-14,152.7h0a9.11,9.11,0,0,1-6.94,5.5h0a9.12,9.12,0,0,1-9.64-4.92h0a29.72,29.72,0,0,1-3.15-13.32V118.93a24.75,24.75,0,0,1,2.82-11.47h0a9.12,9.12,0,0,1,10.31-4.62l.15,0a9.16,9.16,0,0,1,6.25,5.46h0a52.47,52.47,0,0,1,3.77,19.52v79.29A46.57,46.57,0,0,1,370.34,225Z"
                            style="fill:#ffaf00;fill-rule:evenodd" />
                        <polygon
                            points="0 71.64 0 263.63 21.99 269.99 21.99 127.96 54.67 193.83 95.03 115.73 95.03 291.12 134.85 302.64 134.85 21.07 95.03 36 54.67 122.48 21.99 63.4 0 71.64"
                            style="fill:rgb(233, 57, 22);fill-rule:evenodd" />
                        <polygon points="140.58 18.92 140.58 304.3 191.03 318.9 191.03 0 140.58 18.92"
                                 style="fill:rgb(233, 57, 22);fill-rule:evenodd" />
                        <path
                            d="M316.09,46.91,191,0V318.9l125.06-36.18,7.54-16.61v-202ZM288.42,216.55h0a24.9,24.9,0,0,1-18.9,12.95l-28,3.46V90.27l29.21,6.1a24.9,24.9,0,0,1,17.06,13l.88,1.72a24.94,24.94,0,0,1,2.73,11.33v82.36A24.89,24.89,0,0,1,288.42,216.55Z"
                            style="fill:#ffaf00;fill-rule:evenodd" />
                        </svg>
                    </a>
                    <div class="header-with-search__seach-section">
                        <div class="mido-searchbar">
                            <div class="mido-searchbar__main">
                                <form id="search-form" action="search" class="mido-searchbar-input" method="get"
                                      autocomplete="off">
                                    <input name="keyword" type="text" aria-label="Tìm kiếm trên Mido"
                                           class="mido-searchbar-input__input" placeholder="Tìm kiếm trên Mido"
                                           autocomplete="off" maxlength="128" value />
                                </form>
                            </div>

                            <button type="submit" class="search-btn" form="search-form">
                                <i class="search-icon fa-solid fa-magnifying-glass"></i>
                            </button>
                        </div>
                    </div>
                    <div class="header-with-search__cart-section">
                        <div class="stardust-popover">
                            <div>
                                <div class="cart-container">
                                    <a href="/mido/cart" class="cart-item">
                                        <svg viewBox="0 0 26.6 25.6" class="mido-svg-icon cart-icon"><polyline fill="none" points="2 1.7 5.5 1.7 9.6 18.3 21.2 18.3 24.6 6.1 7 6.1" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" stroke-width="2.5"></polyline><circle cx="10.7" cy="23" r="2.2" stroke="none"></circle><circle cx="19.7" cy="23" r="2.2" stroke="none"></circle>
                                        </svg>
                                        <c:if test="${cookie.username.value != null && cookie.cart_number.value != null}">
                                            <div class="mido-cart-number-badge">${cookie.cart_number.value}</div>
                                        </c:if>
                                    </a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </header>

            <!-- body -->
            <div class="container body">
                <div class="body-left">
                    <div class="body-left__user">
                        <div class="body-left__user-avatar">
                            <img class="user-avatar__img"
                                 src="/mido/${user.getImg()}">
                        </div>

                        <div class="body-left__user-username">
                            <div class="username">${cookie.username.value}</div>
                            <div>
                                <a href="profile" class="profile-link">
                                    <i class="pen-icon fa-solid fa-pen"></i>
                                    Sửa hồ sơ</a>
                            </div>
                        </div>
                    </div>

                    <div class="body-left__sidebar">
                        <div class="stardust-dropdown stardust-dropdown--open">
                            <div class="stardust-dropdown__item-header">
                                <a href="/mido/profile" >
                                    <div class="item-header__icon">
                                        <img src="https://cf.shopee.vn/file/ba61750a46794d8847c3f463c5e71cc4">
                                    </div>
                                    <div class="item-header__title">
                                        <div>
                                            Tài khoản của tôi
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="stardust-dropdown__item-body stardust-dropdown__item-body--open">
                                <div style="padding: 0 0 .1875rem 2.125rem;">
                                    <a class="FEE-3D" href="/mido/profile">
                                        <span class="qyt-aY">Hồ sơ</span>
                                    </a>
<!--                                    <a class="FEE-3D" href="/mido/profile/address">
                                        <span class="qyt-aY">Địa chỉ</span>
                                    </a>-->
                                    <a class="FEE-3D" href="/mido/profile/changepassword">
                                        <span class="qyt-aY" style="color: #ee4d2d;">Đổi mật khẩu</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="stardust-dropdown">
                            <div class="stardust-dropdown__item-header">
                                <a href="/mido/order" >
                                    <div class="item-header__icon">
                                        <img src="https://cf.shopee.vn/file/f0049e9df4e536bc3e7f140d071e9078">
                                    </div>
                                    <div class="item-header__title">
                                        <div>
                                            Đơn mua
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="stardust-dropdown__item-body">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="body-main">
                    <div class="body-main__form-wrapper">
                        <div style="padding: 0 1.875rem .625rem;">
                            <div class="form-header">
                                <h1 class="form-header__title">Đổi mật khẩu</h1>
                                <div class="form-header__desc">Để bảo mật tài khoản, vui lòng không chia sẻ mật khẩu cho người khác</div>
                            </div>

                            <div class="form-body">
                                <div class="form-body__main">
                                    <form id="form" action="changepassword" method="post">


                                        <div class="form-item-wrapper">
                                            <div class="form-item">
                                                <div class="form-item__label">
                                                    <label>Mật khẩu hiện tại</label>
                                                </div>
                                                <div class="form-item__input">
                                                    <div style="width:100%">
                                                        <div class="form-item__input-with-validator">
                                                            <input name="password" type="password" placeholder="" maxlength="255" value="">
                                                        </div>
                                                        <div class="notify-bellow">

                                                        </div>
                                                    </div>
                                                </div>

                                                <button type="submit" form="forget-form" class="forget-button">Quên mật khẩu?</button>

                                            </div>
                                        </div>

                                        <div class="form-item-wrapper">
                                            <div class="form-item">
                                                <div class="form-item__label">
                                                    <label>Mật Khẩu Mới</label>
                                                </div>
                                                <div class="form-item__input">
                                                    <div style="width:100%">
                                                        <div class="form-item__input-with-validator">
                                                            <input name="newpassword" type="password" placeholder="" maxlength="255" value="">
                                                        </div>
                                                        <div class="notify-bellow">

                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-item-wrapper">
                                            <div class="form-item">
                                                <div class="form-item__label">
                                                    <label>Xác Nhận Mật Khẩu</label>
                                                </div>
                                                <div class="form-item__input">
                                                    <div style="width:100%">
                                                        <div class="form-item__input-with-validator">
                                                            <input type="password" name="cfpassword" placeholder="" maxlength="20" value="">
                                                        </div>
                                                        <div class="notify-bellow">

                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>


                                        <div class="button-wrapper">
                                            <button form="form" type="submit" aria-disabled="false">Lưu</button>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- footer -->
            <footer class="footer">
                <div style="background-color: #fbfbfb;">
                    <div class="footer__top">
                        <div class="footer__top-content">

                            <div class="footer__top-item">
                                <div class="footer__top-item__title">
                                    Chăm sóc khách hàng
                                </div>
                                <ul class="SOb2n7">
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Trung tâm trợ giúp</a>
                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Mido Blog</a>
                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Mido Mall</a>
                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Hướng Dẫn Mua Hàng</a>
                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Hướng Dẫn Bán Hàng</a>
                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Thanh Toán</a>

                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Mido Xu</a>

                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Vận Chuyển</a>

                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Trả Hàng & Hoàn Tiền</a>

                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Chăm Sóc Khách Hàng</a>

                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Chính Sách Bảo Hành</a>

                                    </li>
                                </ul>
                            </div>
                            <div class="footer__top-item">
                                <div class="footer__top-item__title">
                                    VỀ MIDO
                                </div>
                                <ul class="SOb2n7">
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Giới Thiệu Về Mido Việt Nam</a>
                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Tuyển Dụng</a>
                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Điều Khoản Mido</a>
                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Chính Sách Bảo Mật</a>
                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Chính Hãng</a>
                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Kênh Người Bán</a>

                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Flash Sales</a>

                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Chương trình Tiếp thị liên kết Mido</a>

                                    </li>
                                    <li class="yy98Or">
                                        <a href="#" class="FA0WjS" title="">Liên Hệ Với Truyền Thông</a>

                                    </li>


                                    </li>
                                </ul>
                            </div>

                            <div class="footer__top-item">
                                <div class="footer__top-item__title">
                                    THANH TOÁN
                                </div>
                                <ul class="payment"> 
                                    <li class="payment__item">
                                        <div class="footer-vn-background footer-vn-visa-png" style="width: 55px; height: 18px;"></div>
                                    </li>
                                    <li class="payment__item">
                                        <div class="footer-vn-background footer-vn-mastercard-png" style="width: 55px; height: 29px;"></div>
                                    </li>
                                    <li class="payment__item">
                                        <div class="footer-vn-background footer-vn-jcb-png" style="width: 55px; height: 23px;"></div>
                                    </li>
                                    <li class="payment__item">
                                        <div class="footer-vn-background footer-vn-amex-png" style="width: 55px; height: 24px;"></div>
                                    </li>
                                    <li class="payment__item">
                                        <div class="footer-vn-background footer-vn-vn_cod_footer-png" style="width: 50px; height: 29px;"></div>
                                    </li>
                                    <li class="payment__item">
                                        <div class="footer-vn-background footer-vn-vn_installment_footer-png" style="width: 55px; height: 29px;"></div>
                                    </li>
                                </ul>
                                <div class="footer__top-item__title">
                                    ĐƠN VỊ VẬN CHUYỂN
                                </div>
                                <ul class="payment"> 
                                    <li class="payment__item">
                                        <div class="footer-vn-background footer-vn-ghtk-png" style="width: 55px; height: 18px;"></div>
                                    </li>
                                    <li class="payment__item">
                                        <div class="footer-vn-background footer-vn-ghn-png" style="width: 55px; height: 29px;"></div>                                    </li>
                                    <li class="payment__item">
                                        <div class="footer-vn-background footer-vn-viettel_post-png" style="width: 55px; height: 40px;"></div>
                                    </li>
                                    <li class="payment__item">
                                        <div class="footer-vn-background footer-vn-vnpost-png" style="width: 55px; height: 27px;"></div>
                                    </li>
                                    <li class="payment__item">
                                        <div class="footer-vn-background footer-vn-vn_jnt_footer-png" style="width: 55px; height: 16px;"></div>
                                    </li>
                                    <li class="payment__item">
                                        <div class="footer-vn-background footer-vn-vn_installment_footer-png" style="width: 55px; height: 29px;"></div>
                                    </li>
                                </ul>
                            </div>

                            <div class="footer__top-item">
                                <div class="footer__top-item__title">
                                    THEO DÕI CHÚNG TÔI TRÊN
                                </div>
                                <ul class="SOb2n7">
                                    <li class="yy98Or">
                                        <a href="https://facebook.com/ShopeeVN" class="FA0WjS" title="" target="_blank">
                                            <div class="footer-vn-background footer-vn-f-png _6ZyW8Y"></div>Facebook
                                        </a>
                                    </li>
                                    <li class="yy98Or">
                                        <a href="https://instagram.com/Shopee_VN" class="FA0WjS" title="" target="_blank">
                                            <div class="footer-vn-background footer-vn-ins-png _6ZyW8Y"></div>Instagram
                                        </a>
                                    </li>
                                    <li class="yy98Or">
                                        <a href="https://linkedin.com/company/shopee" class="FA0WjS" title="" target="_blank">
                                            <div class="footer-vn-background footer-vn-lin-png _6ZyW8Y"></div>LinkedIn
                                        </a>
                                    </li>


                                    </li>
                                </ul>
                            </div>

                            <div class="footer__top-item">
                                <div class="footer__top-item__title">
                                    Tải ứng dụng Mido ngay thôi
                                </div>
                                <a class="pkg67p" href="/web/" target="_blank" rel="noopener noreferrer">
                                    <img src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg//assets/d91264e165ed6facc6178994d5afae79.png" alt="download_qr_code" class="ebQ6br">
                                    <div class="zLPzwH"><img class="hfut4Q" src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg//assets/39f189e19764dab688d3850742f13718.png" alt="App Store"><img class="hfut4Q" src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg//assets/f4f5426ce757aea491dce94201560583.png" alt="Play Store"><img class="hfut4Q" src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg//assets/1ae215920a31f2fc75b00d4ee9ae8551.png" alt="App Gallery">
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="footer__top-footer">
                            <div class="footer__top-footer-left">© 2022 Mido. Tất cả các quyền được bảo lưu.</div>
                            <div class="footer__top-footer-right">
                                <div class="footer__top-footer-right__label">
                                    Quốc gia & Khu vực:
                                </div>
                                <div class="footer__top-footer-right__item">
                                    Singapore
                                </div>
                                <div class="footer__top-footer-right__item">
                                    Indonesia
                                </div>
                                <div class="footer__top-footer-right__item">
                                    Đài Loan
                                </div>
                                <div class="footer__top-footer-right__item">
                                    Thái Lan
                                </div>
                                <div class="footer__top-footer-right__item">
                                    Malaysia
                                </div>
                                <div class="footer__top-footer-right__item">
                                    Việt Nam
                                </div>
                                <div class="footer__top-footer-right__item">
                                    Philippines
                                </div>
                                <div class="footer__top-footer-right__item">
                                    Brazil
                                </div>
                                <div class="footer__top-footer-right__item">
                                    México  
                                </div>
                                <div class="footer__top-footer-right__item">
                                    Colombia
                                </div>
                                <div class="footer__top-footer-right__item">
                                    Chile
                                </div>
                                <div class="footer__top-footer-right__item">
                                    Poland
                                </div>
                                <div class="footer__top-footer-right__item">
                                    Spain
                                </div>
                                <div class="footer__top-footer-right__item">
                                    Argentina
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </footer>
        </div>

        <script>
            var notifyBelows = document.getElementsByClassName('notify-bellow');
            var passwordRegex = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");
            <c:if test="${check!=null}">
                notifyBelows[0].innerHTML = 'Mật khẩu không chính xác';
            </c:if>

            document.getElementById('form').onsubmit = (e) => {
                var oldPass = document.getElementsByName('password')[0].value;
                var newPass = document.getElementsByName('newpassword')[0].value;
                var cfPass = document.getElementsByName('cfpassword')[0].value;
                if (oldPass === '') {
                    notifyBelows[0].innerHTML = 'Không được để trống';
                    e.preventDefault();
                } else if (!passwordRegex.test(oldPass)) {
                    notifyBelows[0].innerHTML = 'Mật khẩu chứa ít nhất 8 kí tự bao gồm kí tự in thường, in hoa, chữ số và kí tự đặc biệt';
                    e.preventDefault();
                } else
                    notifyBelows[0].innerHTML = '';

                if (newPass === '') {
                    notifyBelows[1].innerHTML = 'Không được để trống';
                    e.preventDefault();
                } else if (!passwordRegex.test(newPass)) {
                    notifyBelows[1].innerHTML = 'Mật khẩu chứa ít nhất 8 kí tự bao gồm kí tự in thường, in hoa, chữ số và kí tự đặc biệt';
                    e.preventDefault();
                } else if (oldPass === newPass) {
                    notifyBelows[1].innerHTML = 'Mật khẩu mới phải khác mật khẩu hiện tại';
                    e.preventDefault();
                } else
                    notifyBelows[1].innerHTML = '';

                if (cfPass === '') {
                    notifyBelows[2].innerHTML = 'Không được để trống';
                    e.preventDefault();
                } else if (cfPass !== newPass) {
                    notifyBelows[2].innerHTML = 'Mật khẩu nhập lại không đúng';
                    e.preventDefault();
                } else
                    notifyBelows[2].innerHTML = '';
            };

        </script>
    </body>

</html>