<%@page import="model.Product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Mido</title>
        <link rel="stylesheet" href="css/base.css" />
        <link rel="stylesheet" href="css/main.css" />
        <link rel="stylesheet" href="css/product.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="shortcut icon" href="img/icon.png" type="image/x-icon">
    </head>

    <body>
        <div id="main">
            <form id="cart-form" style="display: none;" action="cart" method="post">
                <input class="index1" type="text" name="value1" value="-1">
                <input class="index2" type="text" name="value2" value="-1">
                <input type="text" name="product_id" value="${param.id}">
                <input type="text" name="form_quantity" value="1">
                <input type="text" name="form_price" value="${product.getPrice()}">

            </form>
            <form id="order-form" action="order" style="display: none;" method="post">
                <input class="index1" type="text" name="value1" value="-1">
                <input class="index2" type="text" name="value2" value="-1">
                <input type="text" name="product_id" value="${param.id}">
                <input type="text" name="form_quantity" value="1">
                <input type="text" name="form_price" value="${product.getPrice()}">
            </form>
            <!-- header -->
            <header class="header">
                <nav class="header-navbar container">
                    <ul class="header-navbar__list">
                        <li class="header-navbar__item header-navbar__item--hoverable">Kênh người bán</li>
                        <li class="header-navbar__item header__navbar-item--separate header-navbar__item--hoverable">Trở
                            thành người bán Mido</li>
                        <li class="header-navbar__item header__navbar-item--separate header-navbar__item--hoverable">Tải ứng
                            dụng</li>
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
                        <li class="header-navbar__item header-navbar__item--hoverable">
                            <a href="#" class="header-navbar__item-link">
                                <i class="right-icon fa-solid fa-bell"></i>
                                Thông báo
                            </a>
                        </li>
                        <li class="header-navbar__item header-navbar__item--hoverable">

                            <a href="help" class="header-navbar__item-link">
                                <i class="right-icon fa-solid fa-circle-question"></i>
                                Hỗ trợ
                            </a>
                        </li>
                        <c:if test="${cookie.username.value == null}">
                            <li class="header-navbar__item header-navbar__item--hoverable">
                                <a href="signup" class="header-navbar__item-link">Đăng ký</a>
                            </li>
                            <div class="navbar__item-separator"></div>
                            <li class="header-navbar__item header-navbar__item--hoverable">
                                <a href="login" class="header-navbar__item-link">Đăng nhập</a>
                            </li>
                        </c:if>

                        <c:if test="${cookie.username.value != null}">
                            <li class="header-navbar__item header-navbar__user header-navbar__item--hoverable">
                                <img src="${cookie.image.value}" alt=""
                                     class="header__navbar-user-img">
                                <a href="profile"
                                   class="header-navbar__item-link header__navbar-user-name">${cookie.username.value}</a>
                            </li>
                            <li class="header-navbar__item header-navbar__item--hoverable">
                                <a href="logout" class="header-navbar__item-link">Đăng xuất</a>
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
                                    <a href="cart" class="cart-item">
                                        <svg viewBox="0 0 26.6 25.6" class="mido-svg-icon cart-icon">
                                        <polyline fill="none" points="2 1.7 5.5 1.7 9.6 18.3 21.2 18.3 24.6 6.1 7 6.1"
                                                  stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                                  stroke-width="2.5"></polyline>
                                        <circle cx="10.7" cy="23" r="2.2" stroke="none"></circle>
                                        <circle cx="19.7" cy="23" r="2.2" stroke="none"></circle>
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
            <div class="page-product">
                <div role="main" class="container">
                    <div class="nav-category-product">
                        <a class="nav-category-product__link" href="/mido">Mido</a>
                        <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="icon-arrow-right">
                        <path
                            d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z">
                        </path>
                        </svg>
                        <a class="nav-category-product__link"
                           href="/mido/category?id=${category.getId()}">${category.getName()}</a>
                        <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="icon-arrow-right">
                        <path
                            d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z">
                        </path>
                        </svg>
                        <span class="nav-category-product__name">
                            ${product.getProductName()}
                        </span>
                    </div>

                    <div class="product-briefing">
                        <div class="product-briefing__section-image">
                            <div style="display: flex; flex-direction: column;">
                                <div class="main-product-image-wrapper">
                                    <div class="main-product-image" style="background-image: url('${product.getImage()}');
                                         background-size: contain; background-repeat: no-repeat;">

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product-briefing__section-content">
                            <div class="product-content-wrapper">
                                <div class="product-name-wrapper">
                                    <div class="tag-product">
                                        Yêu thích+
                                    </div>
                                    <span>
                                        ${product.getProductName()}
                                    </span>
                                </div>
                                <div class="vote-section">
                                    <div class="vote-wrapper">
                                        <div class="vote-number">
                                            4.5
                                        </div>
                                        <div class="vote-start-section">
                                            <div class="mido-rating-stars">
                                                <div class="mido-rating-stars__stars">
                                                    <div class="mido-rating-stars__star-wrapper">
                                                        <div class="mido-rating-stars__lit" style="width: 100%;">
                                                            <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0"
                                                                 y="0" class="mido-rating-stars__primary-star">
                                                            <polygon
                                                                points="7.5 .8 9.7 5.4 14.5 5.9 10.7 9.1 11.8 14.2 7.5 11.6 3.2 14.2 4.3 9.1 .5 5.9 5.3 5.4"
                                                                stroke-linecap="round" stroke-linejoin="round"
                                                                stroke-miterlimit="10"></polygon>
                                                            </svg>
                                                        </div>
                                                        <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0"
                                                             y="0" class="mido-rating-stars__hollow-star">
                                                        <polygon fill="none"
                                                                 points="7.5 .8 9.7 5.4 14.5 5.9 10.7 9.1 11.8 14.2 7.5 11.6 3.2 14.2 4.3 9.1 .5 5.9 5.3 5.4"
                                                                 stroke-linecap="round" stroke-linejoin="round"
                                                                 stroke-miterlimit="10"></polygon>
                                                        </svg>
                                                    </div>
                                                    <div class="mido-rating-stars__star-wrapper">
                                                        <div class="mido-rating-stars__lit" style="width: 100%;">
                                                            <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0"
                                                                 y="0" class="mido-rating-stars__primary-star">
                                                            <polygon
                                                                points="7.5 .8 9.7 5.4 14.5 5.9 10.7 9.1 11.8 14.2 7.5 11.6 3.2 14.2 4.3 9.1 .5 5.9 5.3 5.4"
                                                                stroke-linecap="round" stroke-linejoin="round"
                                                                stroke-miterlimit="10"></polygon>
                                                            </svg>
                                                        </div>
                                                        <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0"
                                                             y="0" class="mido-rating-stars__hollow-star">
                                                        <polygon fill="none"
                                                                 points="7.5 .8 9.7 5.4 14.5 5.9 10.7 9.1 11.8 14.2 7.5 11.6 3.2 14.2 4.3 9.1 .5 5.9 5.3 5.4"
                                                                 stroke-linecap="round" stroke-linejoin="round"
                                                                 stroke-miterlimit="10"></polygon>
                                                        </svg>
                                                    </div>
                                                    <div class="mido-rating-stars__star-wrapper">
                                                        <div class="mido-rating-stars__lit" style="width: 100%;">
                                                            <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0"
                                                                 y="0" class="mido-rating-stars__primary-star">
                                                            <polygon
                                                                points="7.5 .8 9.7 5.4 14.5 5.9 10.7 9.1 11.8 14.2 7.5 11.6 3.2 14.2 4.3 9.1 .5 5.9 5.3 5.4"
                                                                stroke-linecap="round" stroke-linejoin="round"
                                                                stroke-miterlimit="10"></polygon>
                                                            </svg>
                                                        </div>
                                                        <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0"
                                                             y="0" class="mido-rating-stars__hollow-star">
                                                        <polygon fill="none"
                                                                 points="7.5 .8 9.7 5.4 14.5 5.9 10.7 9.1 11.8 14.2 7.5 11.6 3.2 14.2 4.3 9.1 .5 5.9 5.3 5.4"
                                                                 stroke-linecap="round" stroke-linejoin="round"
                                                                 stroke-miterlimit="10"></polygon>
                                                        </svg>
                                                    </div>
                                                    <div class="mido-rating-stars__star-wrapper">
                                                        <div class="mido-rating-stars__lit" style="width: 100%;">
                                                            <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0"
                                                                 y="0" class="mido-rating-stars__primary-star">
                                                            <polygon
                                                                points="7.5 .8 9.7 5.4 14.5 5.9 10.7 9.1 11.8 14.2 7.5 11.6 3.2 14.2 4.3 9.1 .5 5.9 5.3 5.4"
                                                                stroke-linecap="round" stroke-linejoin="round"
                                                                stroke-miterlimit="10"></polygon>
                                                            </svg>
                                                        </div>
                                                        <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0"
                                                             y="0" class="mido-rating-stars__hollow-star">
                                                        <polygon fill="none"
                                                                 points="7.5 .8 9.7 5.4 14.5 5.9 10.7 9.1 11.8 14.2 7.5 11.6 3.2 14.2 4.3 9.1 .5 5.9 5.3 5.4"
                                                                 stroke-linecap="round" stroke-linejoin="round"
                                                                 stroke-miterlimit="10"></polygon>
                                                        </svg>
                                                    </div>
                                                    <div class="mido-rating-stars__star-wrapper">
                                                        <div class="mido-rating-stars__lit" style="width: 50%;">
                                                            <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0"
                                                                 y="0" class="mido-rating-stars__primary-star">
                                                            <polygon
                                                                points="7.5 .8 9.7 5.4 14.5 5.9 10.7 9.1 11.8 14.2 7.5 11.6 3.2 14.2 4.3 9.1 .5 5.9 5.3 5.4"
                                                                stroke-linecap="round" stroke-linejoin="round"
                                                                stroke-miterlimit="10"></polygon>
                                                            </svg>
                                                        </div>
                                                        <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0"
                                                             y="0" class="mido-rating-stars__hollow-star">
                                                        <polygon fill="none"
                                                                 points="7.5 .8 9.7 5.4 14.5 5.9 10.7 9.1 11.8 14.2 7.5 11.6 3.2 14.2 4.3 9.1 .5 5.9 5.3 5.4"
                                                                 stroke-linecap="round" stroke-linejoin="round"
                                                                 stroke-miterlimit="10"></polygon>
                                                        </svg>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="vote-wrapper">
                                        <div class="rate-number">
                                            43
                                        </div>
                                        <div class="vote-start-section">
                                            Đánh Giá
                                        </div>
                                    </div>
                                    <div class="sold-wrapper">
                                        <div class="sold-number">
                                            13
                                        </div>
                                        <div class="sold-text">
                                            Đã bán
                                        </div>
                                    </div>
                                </div>

                                <div style="margin-top: 10px;">
                                    <div class="flex flex-column">
                                        <div class="flex flex-column price-padding">
                                            <div class="flex items-center">
                                                <div class="flex items-center price-section">
                                                    <div class="old-price">
                                                        ₫${product.getPriceString(product.getPrice()*1.2)}
                                                    </div>

                                                    <div class="flex items-center">
                                                        <div class="current-price">
                                                            ₫${product.getPriceString(product.getPrice())}
                                                        </div>
                                                        <div class="discount-percentage">
                                                            20% giảm
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="flex items-center below-price-section">
                                                <svg class="gi-cung-re-icon" xmlns="http://www.w3.org/2000/svg" width="33"
                                                     height="16" viewBox="0 0 33 16" class="OvGiRe" fill="none">
                                                <path
                                                    d="M29.7085 6.72195L27.4319 3.75641C27.1376 3.37304 26.5043 3.08617 26.0241 3.11887L21.2748 3.44266C21.2599 3.44298 21.245 3.44363 21.2301 3.4446L10.4539 4.18056L8.33573 4.32497C8.33282 4.3253 8.3299 4.32562 8.32731 4.32562L4.44448 4.5908C3.96431 4.62188 3.5353 5.04248 3.49126 5.52557L1.90407 12.9937C1.86003 13.4768 2.21684 13.8465 2.69702 13.8158L20.3893 12.6725C20.4453 12.6689 20.5036 12.6611 20.5635 12.6498L25.2159 12.3497C25.6961 12.317 26.3456 11.989 26.6594 11.6211L29.6722 8.08833C29.9866 7.72018 30.0028 7.10532 29.7085 6.72195ZM27.7758 7.63794C27.61 7.90442 27.2911 8.00544 27.0638 7.86394C26.8365 7.72245 26.7866 7.39187 26.9524 7.12539C27.1182 6.85892 27.4371 6.75789 27.6644 6.89939C27.892 7.04088 27.9416 7.37179 27.7758 7.63794Z"
                                                    fill="#D0011B"></path>
                                                <path
                                                    d="M3.80273 9.13674C3.80273 9.13674 4.21653 7.98892 6.5711 6.29487C8.92567 4.60083 9.80281 4.54352 9.80281 4.54352L8.65272 8.63487L3.80273 9.13674Z"
                                                    fill="#93001C"></path>
                                                <path
                                                    d="M28.4963 6.69147L26.4192 4.10605C26.1508 3.7719 25.5728 3.52194 25.1347 3.55043L20.8018 3.83277C20.7882 3.8331 20.7746 3.83374 20.761 3.83439L11.8246 4.41753C11.8249 4.41753 11.8249 4.41753 11.8252 4.41753L10.9232 4.4703L9.80285 4.54316C9.40039 4.56971 9.06203 4.85528 8.96846 5.24771L8.30438 8.03518C8.29823 8.06043 8.33028 8.03421 8.30438 8.03518L4.86254 8.36576C4.33056 8.3826 3.87759 8.75787 3.762 9.27722L3.6872 9.61298L3.6354 9.84611L3.58327 10.0805L3.32845 11.2598L3.12835 12.1589C3.0882 12.5801 3.4136 12.9026 3.85169 12.8754L19.9933 11.8788C20.0445 11.8756 20.0976 11.8688 20.1523 11.8591L24.3971 11.5975C24.8352 11.569 25.4277 11.2831 25.7143 10.9622L28.4632 7.88235C28.7498 7.56148 28.7647 7.02562 28.4963 6.69147ZM27.7742 7.63789C27.6084 7.90437 27.2895 8.00539 27.0622 7.8639C26.8349 7.7224 26.7851 7.39182 26.9508 7.12534C27.1166 6.85887 27.4355 6.75785 27.6628 6.89934C27.8905 7.04083 27.94 7.37174 27.7742 7.63789Z"
                                                    fill="#EE4D2D"></path>
                                                <path
                                                    d="M15.5524 5.12762L17.8046 4.98095C17.904 4.97447 18.0174 4.97026 18.1446 4.96832C18.1692 4.96767 18.1948 4.96735 18.22 4.96735C18.5063 4.96735 18.7737 5.0075 19.0149 5.08715C19.2821 5.17522 19.5081 5.31477 19.6868 5.50192C19.8662 5.68939 19.9941 5.92931 20.0666 6.21489C20.1381 6.49658 20.1449 6.83364 20.0873 7.21668C20.0102 7.71531 19.8454 8.14465 19.5974 8.49272C19.3698 8.81229 19.093 9.07683 18.7744 9.28016L19.7982 11.0393L17.8393 11.1669L17.034 9.75839L16.6008 9.78656L16.3667 11.2627L14.5762 11.3793L15.5524 5.12762ZM16.8747 8.04784L17.25 8.02355C17.3264 8.0187 17.3954 8.01254 17.4608 8.0051C17.531 7.99733 17.5867 7.99215 17.6308 7.98923C17.8101 7.96592 17.9675 7.90019 18.0989 7.79399C18.2259 7.69103 18.3104 7.52039 18.3499 7.28694C18.3871 7.06547 18.3606 6.91362 18.2702 6.83623C18.1708 6.7514 18.0326 6.70834 17.859 6.70801C17.8182 6.7106 17.7642 6.71255 17.6984 6.71384C17.6301 6.71514 17.5608 6.71838 17.4922 6.72258L17.0781 6.74946L16.8747 8.04784Z"
                                                    fill="#FCE60C"></path>
                                                <path
                                                    d="M18.2197 5.06451C18.4969 5.06451 18.7517 5.10272 18.9842 5.17945C19.2371 5.26299 19.4478 5.39283 19.6162 5.56897C19.7849 5.74543 19.9034 5.96852 19.972 6.23888C20.0407 6.50924 20.0468 6.83043 19.9908 7.20214C19.916 7.68782 19.758 8.09935 19.5178 8.43641C19.2775 8.77379 18.9855 9.04383 18.6423 9.24717L19.635 10.9525L17.893 11.0659L17.0878 9.6574L16.7695 9.67812L16.5166 9.69464L16.2825 11.1708L14.6905 11.2744L15.6363 5.21896L17.4812 5.09883C17.6062 5.09074 17.7169 5.08361 17.8137 5.07714C17.9105 5.07099 18.0213 5.06678 18.1462 5.06483C18.1708 5.06483 18.1954 5.06451 18.2197 5.06451ZM16.7601 8.15277L16.8537 8.14662C16.9036 8.14338 16.9644 8.1395 17.0363 8.13464C17.1079 8.13011 17.1814 8.12525 17.2565 8.12039C17.3313 8.11554 17.4031 8.10938 17.4718 8.10161C17.5404 8.09417 17.5964 8.08866 17.6405 8.08607C17.8403 8.06049 18.0135 7.98861 18.1602 7.86946C18.3068 7.75063 18.402 7.56186 18.4457 7.30284C18.4894 7.04413 18.4519 6.86378 18.3334 6.76244C18.2152 6.66142 18.0569 6.61091 17.8581 6.61091C17.8574 6.61091 17.8564 6.61091 17.8558 6.61091C17.8182 6.6135 17.7651 6.61544 17.6965 6.61674C17.6279 6.61803 17.5576 6.62127 17.4857 6.6258C17.4138 6.63033 17.3436 6.63519 17.2749 6.6394C17.2063 6.64393 17.147 6.64782 17.0969 6.65106L16.9939 6.65786L16.7601 8.15277ZM18.2197 4.87024C18.1938 4.87024 18.1676 4.87056 18.1414 4.87121C18.0122 4.87315 17.9002 4.87736 17.8011 4.88384L17.4686 4.90553L15.6236 5.02566L15.4682 5.03569L15.4443 5.18949L14.4985 11.2449L14.4609 11.4845L14.7028 11.4687L16.2948 11.365L16.4496 11.355L16.4739 11.2015L16.6837 9.87855L16.7815 9.87207L16.9787 9.85912L17.7237 11.1624L17.7839 11.2676L17.905 11.2598L19.647 11.1465L19.9601 11.1261L19.8021 10.8548L18.9032 9.31063C19.1998 9.10794 19.4588 8.85247 19.6751 8.54908C19.9322 8.18839 20.1025 7.74513 20.1819 7.2316C20.2418 6.83529 20.234 6.48528 20.1595 6.19096C20.0824 5.88887 19.9468 5.63437 19.7558 5.4346C19.5657 5.23579 19.3264 5.08782 19.0441 4.9949C18.7941 4.91233 18.5163 4.87024 18.2197 4.87024ZM17.1619 6.84144L17.2876 6.83335L17.3656 6.82817L17.4983 6.81943C17.5657 6.81489 17.6337 6.81198 17.7004 6.81068C17.7655 6.80939 17.8199 6.80745 17.8616 6.80518C18.0119 6.80583 18.1249 6.84015 18.2071 6.91009C18.289 6.98035 18.2719 7.1662 18.2541 7.27078C18.2188 7.48027 18.1459 7.63115 18.0378 7.71858C17.9199 7.81409 17.7836 7.87108 17.6214 7.89277C17.5767 7.89569 17.5207 7.90119 17.4507 7.90864C17.3863 7.91576 17.3186 7.92159 17.2438 7.92645L17.1474 7.9326L17.024 7.94069L16.9897 7.94296L17.1619 6.84144Z"
                                                    fill="#EE4D2D"></path>
                                                <path
                                                    d="M20.8711 4.78119L25.2276 4.49755L24.9631 6.20779L22.4068 6.37421L22.296 7.10499L24.7779 6.95281L24.5324 8.55846L22.0594 8.71939L21.9693 9.27986L24.5065 9.11473L24.2511 10.7495L19.8945 11.0332L20.8711 4.78119ZM22.467 4.42988C22.4362 4.42988 22.4052 4.42923 22.3741 4.42794L22.2653 4.42341L22.3984 3.58027L22.4971 3.58124C22.6467 3.58124 22.7811 3.55922 22.8967 3.51584C22.9935 3.47957 23.0453 3.4119 23.0592 3.30343L23.0599 3.29955C23.0812 3.17392 23.0343 3.14672 22.9886 3.13118C22.9271 3.11046 22.8536 3.09977 22.7697 3.09977C22.717 3.09977 22.659 3.10398 22.5975 3.1124L22.4689 3.12988L22.5923 2.30779L22.6616 2.29614C22.7989 2.27283 22.9342 2.26117 23.0637 2.26117C23.1107 2.26117 23.158 2.26279 23.2039 2.2657C23.3833 2.27801 23.5407 2.32139 23.6715 2.39554C23.8081 2.47292 23.9101 2.58657 23.9749 2.73292C24.0383 2.87701 24.0532 3.06124 24.0196 3.28077C23.9859 3.49091 23.9143 3.67417 23.8062 3.82667C23.699 3.97788 23.5679 4.10027 23.4163 4.19093C23.2671 4.28029 23.0994 4.34505 22.918 4.38293C22.7697 4.41402 22.6179 4.42988 22.467 4.42988Z"
                                                    fill="#FCE60C"></path>
                                                <path
                                                    d="M23.0657 2.35797C23.1107 2.35797 23.1554 2.35959 23.1994 2.3625C23.3649 2.37383 23.5067 2.41269 23.6255 2.48003C23.7441 2.54738 23.8315 2.64452 23.8878 2.77209C23.9442 2.89966 23.9565 3.06414 23.9254 3.26586C23.894 3.46143 23.8286 3.62979 23.7288 3.77032C23.6288 3.91116 23.5087 4.02352 23.3681 4.10738C23.2276 4.19156 23.0716 4.25179 22.8999 4.28773C22.7572 4.31784 22.6137 4.33273 22.469 4.33273C22.4395 4.33273 22.4101 4.33209 22.3803 4.33079L22.4832 3.67804C22.4884 3.67804 22.4939 3.67804 22.4991 3.67804C22.6613 3.67804 22.8057 3.65408 22.9326 3.60648C23.0638 3.55727 23.1386 3.46046 23.1574 3.3154C23.1823 3.17034 23.137 3.07807 23.0217 3.03856C22.9498 3.01396 22.8663 3.00198 22.7717 3.00198C22.7141 3.00198 22.6523 3.00651 22.5865 3.01557L22.6801 2.39132C22.8125 2.3693 22.9414 2.35797 23.0657 2.35797ZM25.1146 4.60245L24.8805 6.11614L22.3239 6.28257L22.1834 7.20956L24.6652 7.05738L24.4499 8.46682L21.9775 8.62774L21.8557 9.38475L24.3936 9.21962L24.1689 10.6579L20.0108 10.9286L20.9566 4.87313L25.1146 4.60245ZM23.0657 2.1637C22.931 2.1637 22.7902 2.176 22.6474 2.19996L22.5085 2.22327L22.4874 2.3625L22.3939 2.98676L22.3553 3.2432L22.6121 3.20823C22.6691 3.20046 22.7228 3.19657 22.7714 3.19657C22.8446 3.19657 22.9077 3.20531 22.9589 3.2228C22.9631 3.22442 22.9663 3.22571 22.9683 3.22668C22.9699 3.23478 22.9709 3.25291 22.9657 3.28302L22.965 3.28691L22.9644 3.29079C22.9534 3.37498 22.9181 3.40444 22.864 3.42484C22.7594 3.46402 22.6364 3.48409 22.4985 3.48409H22.4845L22.3168 3.48247L22.2906 3.64793L22.1876 4.30068L22.1536 4.51599L22.3712 4.52506C22.4033 4.52636 22.436 4.527 22.468 4.527C22.6257 4.527 22.784 4.51049 22.9391 4.47779C23.1308 4.43764 23.3086 4.369 23.4672 4.27413C23.6304 4.17634 23.7713 4.04489 23.8865 3.88267C24.0034 3.71819 24.0808 3.52068 24.1167 3.2963C24.1536 3.05702 24.1362 2.85465 24.0653 2.69341C23.9921 2.52763 23.8765 2.39876 23.7211 2.31069C23.5773 2.22942 23.4063 2.1815 23.2124 2.16855C23.1642 2.16532 23.1149 2.1637 23.0657 2.1637ZM25.3436 4.39296L25.102 4.40882L20.944 4.67951L20.7885 4.68954L20.7646 4.84334L19.8188 10.8988L19.7812 11.1384L20.0231 11.1225L24.1812 10.8518L24.3366 10.8418L24.3605 10.688L24.5852 9.24973L24.6228 9.01013L24.3809 9.026L22.0863 9.17559L22.1449 8.81198L24.4625 8.66109L24.6183 8.65105L24.6419 8.49661L24.8572 7.08717L24.8935 6.84919L24.6532 6.86408L22.4117 7.00169L22.4926 6.46712L24.8932 6.31074L25.0486 6.3007L25.0725 6.14658L25.3066 4.63288L25.3436 4.39296Z"
                                                    fill="#EE4D2D"></path>
                                                <path
                                                    d="M10.2082 6.93338C10.2396 6.73587 10.304 6.54775 10.4015 6.36967C10.4989 6.19126 10.62 6.03325 10.7648 5.89532C10.9095 5.75739 11.0746 5.64568 11.2595 5.5602C11.4444 5.47472 11.6374 5.42615 11.8385 5.4145C11.9676 5.40705 12.0852 5.4132 12.1914 5.43295C12.2976 5.4527 12.3937 5.48184 12.4799 5.51973C12.566 5.55793 12.6434 5.60391 12.7124 5.65734C12.7813 5.71108 12.8432 5.76645 12.8976 5.82376L12.3944 6.43993C12.3283 6.36028 12.2399 6.29001 12.1295 6.22849C12.0191 6.1673 11.8805 6.1414 11.7141 6.15111C11.6108 6.15726 11.5147 6.18155 11.4256 6.22396C11.3366 6.2667 11.2579 6.32077 11.1889 6.3865C11.1203 6.45255 11.0636 6.52897 11.0193 6.61639C10.9749 6.70381 10.9454 6.79544 10.9312 6.89128C10.914 6.99878 10.9163 7.0943 10.938 7.17816C10.9597 7.2617 10.9963 7.33228 11.0481 7.38991C11.0999 7.44722 11.1643 7.49029 11.242 7.51911C11.3194 7.5476 11.4055 7.55925 11.5004 7.55375C11.6555 7.5476 11.7902 7.51263 11.9048 7.4482C12.0194 7.38409 12.0968 7.31609 12.137 7.24486L11.6507 7.27303L11.7449 6.66755L13.006 6.5947L12.9889 6.69928C12.9487 6.95216 12.8765 7.17492 12.7719 7.36822C12.6673 7.56152 12.5427 7.72406 12.398 7.85617C12.2532 7.98827 12.0933 8.08962 11.9181 8.1602C11.7433 8.23079 11.5668 8.27126 11.3887 8.28162L11.3758 8.28227C11.1863 8.29328 11.0134 8.2664 10.8571 8.20229C10.7007 8.13786 10.5692 8.04493 10.463 7.92287C10.3568 7.80112 10.2797 7.6551 10.2325 7.48511C10.1849 7.31447 10.1768 7.13089 10.2082 6.93338Z"
                                                    fill="white"></path>
                                                <path
                                                    d="M13.896 8.10127L13.0781 8.14854L13.5104 5.36042L14.3283 5.31315L13.896 8.10127ZM13.7769 5.17651L13.4233 4.58398L13.8837 4.55743L14.1081 5.15741L13.7769 5.17651Z"
                                                    fill="white"></path>
                                                <path
                                                    d="M4.09815 10.6349C4.12696 10.4484 4.18686 10.2732 4.27752 10.1094C4.36818 9.94552 4.48086 9.80176 4.61491 9.67775C4.74928 9.55374 4.90113 9.45369 5.07112 9.37793C5.2411 9.30216 5.41789 9.25877 5.60245 9.24809C5.8291 9.23514 6.01592 9.26363 6.16357 9.33454C6.31121 9.40545 6.4417 9.50485 6.55502 9.63307L6.10108 10.1903C6.07744 10.1628 6.047 10.132 6.01009 10.0983C5.97318 10.0647 5.9285 10.0352 5.87572 10.009C5.82294 9.98308 5.76175 9.96332 5.69181 9.95037C5.62187 9.9371 5.54352 9.9358 5.45674 9.94616C5.39102 9.95264 5.32237 9.97174 5.25147 10.0035C5.18023 10.0352 5.11386 10.0789 5.05201 10.134C4.99017 10.189 4.9361 10.2544 4.89012 10.3295C4.84415 10.405 4.81177 10.4904 4.79363 10.5869C4.78036 10.6669 4.78198 10.7417 4.79784 10.8107C4.81371 10.8796 4.8422 10.9408 4.883 10.9939C4.9238 11.047 4.97722 11.0894 5.04327 11.1215C5.109 11.1532 5.18574 11.1694 5.27251 11.1697C5.36738 11.1723 5.45351 11.162 5.53121 11.139C5.60892 11.116 5.67951 11.0881 5.74265 11.0554C5.80578 11.0227 5.86374 10.9858 5.91652 10.9444C5.96897 10.9029 6.01786 10.8651 6.06254 10.8311L6.3397 11.3423C6.19497 11.4854 6.02984 11.6075 5.84399 11.7079C5.65846 11.8086 5.44315 11.8659 5.19804 11.8801L5.18606 11.8808C5.00442 11.8915 4.83961 11.8665 4.69197 11.8063C4.54432 11.7461 4.42161 11.6593 4.32415 11.5463C4.22669 11.433 4.1574 11.2983 4.11628 11.1422C4.07516 10.9849 4.06901 10.8162 4.09815 10.6349Z"
                                                    fill="white"></path>
                                                <path
                                                    d="M6.63197 10.8172C6.63456 10.7855 6.63844 10.7463 6.64363 10.6996C6.64881 10.653 6.65528 10.6032 6.66338 10.5497C6.67115 10.4963 6.67892 10.4432 6.68701 10.3898C6.69478 10.3364 6.70288 10.2858 6.71065 10.2379L6.86768 9.21412L7.56317 9.17397L7.40614 10.1858C7.38768 10.3085 7.37408 10.4037 7.36502 10.4717C7.35595 10.5397 7.3498 10.5909 7.34753 10.6252C7.33976 10.7498 7.3621 10.847 7.41488 10.9166C7.46766 10.9862 7.55443 11.0176 7.67585 11.0105C7.80212 11.003 7.9012 10.9613 7.97211 10.8842C8.04334 10.8075 8.0945 10.7087 8.12591 10.5879C8.13109 10.5614 8.13692 10.5293 8.14372 10.4918C8.15019 10.4545 8.15667 10.415 8.16347 10.3736C8.16994 10.3322 8.17642 10.2917 8.18322 10.2515C8.18969 10.2114 8.19552 10.1754 8.20103 10.1434L8.35806 9.12766L9.05355 9.08752L8.90429 10.0631C8.89651 10.1058 8.88842 10.155 8.88065 10.2111C8.87288 10.2671 8.86349 10.3237 8.85313 10.381C8.84277 10.4387 8.83208 10.494 8.82172 10.5475C8.81136 10.6009 8.80197 10.6462 8.7942 10.6838C8.75729 10.8366 8.70095 10.9758 8.62454 11.1018C8.54812 11.2277 8.45617 11.3369 8.34835 11.4288C8.24053 11.5211 8.11976 11.5939 7.98701 11.648C7.85393 11.7018 7.71373 11.7332 7.56609 11.7416C7.42394 11.7497 7.29346 11.7348 7.17495 11.6969C7.05645 11.659 6.95478 11.6001 6.8706 11.5204C6.78609 11.4408 6.72295 11.342 6.68054 11.2242C6.63747 11.107 6.62161 10.9713 6.63197 10.8172ZM7.57839 8.66595C7.6153 8.60054 7.65934 8.54906 7.71049 8.5115C7.76198 8.47426 7.81767 8.45386 7.87854 8.4503C7.92581 8.44771 7.96693 8.45451 8.00093 8.47103C8.03525 8.48754 8.06666 8.50632 8.0958 8.52704C8.12461 8.54776 8.15181 8.56751 8.17674 8.58565C8.20167 8.6041 8.22758 8.61382 8.2538 8.61479C8.28553 8.61576 8.31565 8.61058 8.34479 8.59957C8.3736 8.58856 8.40015 8.56913 8.42379 8.54161L8.47948 8.78801C8.44775 8.82946 8.40825 8.8654 8.36098 8.89583C8.3137 8.92627 8.25575 8.94084 8.1871 8.93954C8.13983 8.93695 8.10065 8.92659 8.07054 8.90878C8.04011 8.89065 8.01194 8.87123 7.98571 8.85018C7.95916 8.82913 7.93423 8.81035 7.91059 8.79319C7.88696 8.77603 7.85782 8.76859 7.82349 8.77053C7.78658 8.77279 7.75291 8.78575 7.7228 8.81003C7.69236 8.83431 7.66678 8.86281 7.64574 8.89583L7.57839 8.66595Z"
                                                    fill="white"></path>
                                                <path
                                                    d="M9.42626 9.06616L10.0149 9.03216L10.7075 10.3318L10.9157 8.98003L11.5953 8.94086L11.1983 11.5004L10.5423 11.5383L9.90514 10.3348L9.70892 11.5865L9.0293 11.6257L9.42626 9.06616Z"
                                                    fill="white"></path>
                                                <path
                                                    d="M11.6754 10.2042C11.7042 10.0229 11.7635 9.85035 11.8528 9.68651C11.9422 9.523 12.0536 9.37762 12.1863 9.25102C12.3191 9.12442 12.4706 9.02178 12.6406 8.94342C12.8106 8.86506 12.9877 8.82038 13.1719 8.8097C13.2904 8.8029 13.3986 8.8084 13.496 8.82653C13.5935 8.84467 13.6819 8.87122 13.7609 8.90618C13.8399 8.94115 13.9111 8.98357 13.9743 9.03246C14.0374 9.08168 14.0941 9.13251 14.1443 9.18496L13.6825 9.75062C13.622 9.67744 13.5407 9.61301 13.4394 9.55667C13.338 9.50033 13.2108 9.4767 13.058 9.48544C12.9631 9.49094 12.8747 9.51329 12.7931 9.55214C12.7115 9.59132 12.639 9.64086 12.5758 9.70141C12.5127 9.76195 12.4606 9.83221 12.4198 9.91251C12.379 9.99281 12.3521 10.077 12.3392 10.1647C12.3233 10.2635 12.3256 10.3512 12.3453 10.428C12.3651 10.5047 12.3987 10.5695 12.4463 10.6223C12.4939 10.675 12.5532 10.7145 12.6244 10.7408C12.6956 10.767 12.7746 10.7777 12.8614 10.7725C13.0036 10.767 13.1276 10.7346 13.2328 10.6757C13.338 10.6168 13.4093 10.5546 13.4458 10.4889L12.9994 10.5148L13.0858 9.95882L14.2437 9.89179L14.2278 9.98796C14.1912 10.2201 14.1248 10.4247 14.0287 10.6019C13.9325 10.7793 13.8182 10.9286 13.6854 11.0497C13.5524 11.1711 13.4057 11.264 13.2451 11.3288C13.0845 11.3935 12.9226 11.4308 12.7591 11.4401L12.7471 11.4408C12.5733 11.4508 12.4146 11.4262 12.2708 11.3673C12.1271 11.308 12.0066 11.2229 11.9092 11.1108C11.8117 10.9988 11.7411 10.8651 11.6974 10.709C11.654 10.5543 11.6466 10.3856 11.6754 10.2042Z"
                                                    fill="white"></path>
                                                <path
                                                    d="M27.8641 7.76164C27.6388 7.76164 27.4814 7.71307 27.393 7.61626C27.3046 7.51913 27.2444 7.34396 27.46 7.0587L27.7184 7.25395C27.6537 7.33975 27.6407 7.38637 27.6381 7.40256C27.6915 7.43753 27.9907 7.49743 28.7711 7.27175C29.4371 7.0791 30.1436 6.76341 30.661 6.42732C31.0541 6.17218 31.6868 5.67582 31.509 5.21928C31.4611 5.09624 31.3759 5.01432 31.2487 4.96867C30.6795 4.76501 29.4811 5.32419 29.0673 5.55699L28.9083 5.27497C28.9245 5.26591 29.3121 5.04865 29.801 4.86247C30.4794 4.60409 31.0029 4.53739 31.3575 4.66399C31.5751 4.7417 31.7276 4.88934 31.8104 5.10207C31.9526 5.4673 31.883 6.05108 30.7436 6.75823C30.1951 7.09853 29.4688 7.41325 28.8005 7.59975C28.4146 7.70789 28.1018 7.76164 27.8641 7.76164Z"
                                                    fill="#EE4D2D"></path>
                                                </svg>
                                                <div>
                                                    <div class="below-price-section__header">
                                                        <div class="below-price-section__header-text">
                                                            gì cũng rẻ
                                                        </div>
                                                    </div>
                                                    <div class="below-price-section__desc">
                                                        Giá tốt nhất so với các sản phẩm cùng loại trên Mido!
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="subgroup-section">
                                    <div class="flex flex-column">
                                        <div class="subgroup-wrapper">
                                            <div class="flex flex-column">
                                                <c:if test="${subgroupvalue1!=null}">
                                                    <div class="flex items-center"
                                                         style="margin-bottom: 8px; align-items: baseline;">
                                                        <label class="mido-label">
                                                            ${productdetail.getSubgroupName1()}
                                                        </label>

                                                        <div class="flex items-center subgroupvalue-wrapper">
                                                            <c:forEach var="value1" items="${subgroupvalue1}"
                                                                       varStatus="loop">
                                                                <%--<c:if test="${value1 != 'null'}">--%>
                                                                <button value="${imageArr[loop.index]}" type="button"
                                                                        class="product-variation value1" aria-label="${value1}"
                                                                        aria-disabled="false">${value1}</button>
                                                                <%--</c:if>--%>
                                                            </c:forEach>
                                                        </div>

                                                    </div>
                                                </c:if>
                                                <c:if test="${subgroupvalue2!=null}">
                                                    <div class="flex items-center"
                                                         style="margin-bottom: 8px; align-items: baseline;">
                                                        <label class="mido-label">
                                                            ${productdetail.getSubgroupName2()}
                                                        </label>

                                                        <div class="flex items-center subgroupvalue-wrapper">
                                                            <c:forEach var="value2" items="${subgroupvalue2}"
                                                                       varStatus="loop">
                                                                <%--<c:if test="${value2 != 'null'}">--%>
                                                                <button type="button" class="product-variation value2"
                                                                        aria-label="${value2}"
                                                                        aria-disabled="false">${value2}</button>
                                                                <%--</c:if>--%>
                                                            </c:forEach>
                                                        </div>

                                                    </div>
                                                </c:if>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="order-info-section">
                                    <div class="flex flex-column">
                                        <div class="flex order-info-wrapper">
                                            <div class="flex flex-column">
                                                <div class="">
                                                    <div class="number-of-products-section">
                                                        <div class="number-of-products-section__label">
                                                            Số Lượng
                                                        </div>
                                                        <div class="flex items-center">
                                                            <div style="margin-right: 15px;">
                                                                <div class="input-quantity">
                                                                    <button id="decrease-button"
                                                                            class="change-quantity-button">
                                                                        <svg enable-background="new 0 0 10 10"
                                                                             viewBox="0 0 10 10" x="0" y="0"
                                                                             class="mido-svg-icon">
                                                                        <polygon
                                                                            points="4.5 4.5 3.5 4.5 0 4.5 0 5.5 3.5 5.5 4.5 5.5 10 5.5 10 4.5">
                                                                        </polygon>
                                                                        </svg>
                                                                    </button>
                                                                    <input name="quantity"
                                                                           class="change-quantity-button input-product-quantity"
                                                                           type="text" role="spinbutton" aria-valuenow="1"
                                                                           value="1">
                                                                    <button id="increase-button"
                                                                            class="change-quantity-button">
                                                                        <svg enable-background="new 0 0 10 10"
                                                                             viewBox="0 0 10 10" x="0" y="0"
                                                                             class="mido-svg-icon icon-plus-sign">
                                                                        <polygon
                                                                            points="10 4.5 5.5 4.5 5.5 0 4.5 0 4.5 4.5 0 4.5 0 5.5 4.5 5.5 4.5 10 5.5 10 5.5 5.5 10 5.5">
                                                                        </polygon>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div class="quantity">${quantity} sản phẩm có sẵn</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="notify-below" style="display:none;">
                                            Vui lòng chọn phân hàng
                                        </div>
                                    </div>
                                </div>

                                <div style="margin-top: 15px;">
                                    <div style="padding-left: 20px;">
                                        <div class="buy-button-section">
                                            <button form="cart-form" type="submit" class="add-to-cart-button" aria-disabled="false">
                                                <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0" y="0"
                                                     class="icon-add-to-cart">
                                                <g>
                                                <g>
                                                <polyline fill="none"
                                                          points=".5 .5 2.7 .5 5.2 11 12.4 11 14.5 3.5 3.7 3.5"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10"></polyline>
                                                <circle cx="6" cy="13.5" r="1" stroke="none"></circle>
                                                <circle cx="11.5" cy="13.5" r="1" stroke="none"></circle>
                                                </g>
                                                <line fill="none" stroke-linecap="round" stroke-miterlimit="10"
                                                      x1="7.5" x2="10.5" y1="7" y2="7"></line>
                                                <line fill="none" stroke-linecap="round" stroke-miterlimit="10"
                                                      x1="9" x2="9" y1="8.5" y2="5.5"></line>
                                                </g>
                                                </svg>
                                                <span>thêm vào giỏ hàng</span>
                                            </button>
                                            <button type="submit" form="order-form" class="buy-button" aria-disabled="false">Mua ngay</button>
                                        </div>
                                    </div>
                                </div>
                                <div style="margin-top: 30px; border-top: 1px solid rgba(0, 0, 0, 0.05);"></div>
                            </div>

                        </div>


                    </div>

                    <div>
                        <div class="page-product__content">
                            <div class="page-product__content--left">
                                <div class="page-product__detail">
                                    <div class="-cnLG8">
                                        <div class="page-product__detail-title">CHI TIẾT SẢN PHẨM</div>
                                        <div class="page-product__detail-content">
                                            <div class="detail-content__item">
                                                <label class="detail-content__item-label">
                                                    Danh Mục
                                                </label>
                                                <div class="flex items-center detail-content__item-text">
                                                    <a class="category-item" href="/mido">Mido</a>
                                                    <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="icon-arrow-right"><path d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z"></path>
                                                    </svg>
                                                    <a class="category-item" href="/mido/category?id=${category.getId()}">${category.getName()}</a>
                                                </div>
                                            </div>
                                            <div class="detail-content__item">
                                                <label class="detail-content__item-label">
                                                    Thương hiệu
                                                </label>
                                                <div class="flex items-center detail-content__item-text">
                                                    <div>
                                                        ${product.getBrand()}
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="detail-content__item">
                                                <label class="detail-content__item-label">
                                                    Kho hàng
                                                </label>
                                                <div class="flex items-center detail-content__item-text">
                                                    <div>
                                                        ${quantity}
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="detail-content__item">
                                                <label class="detail-content__item-label">
                                                    Gửi từ
                                                </label>
                                                <div class="flex items-center detail-content__item-text">
                                                    <div>
                                                        Hà Nội
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="-cnLG8">
                                        <div class="page-product__detail-title">MÔ TẢ SẢN PHẨM</div>
                                        <div class="page-product__detail-content">
                                            <p>${product.getDesc()}</p>
                                        </div>
                                    </div>
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
            let quantityArr = [];
            <c:forEach var="i" items="${quantityArr}" varStatus="loop">
            quantityArr[${loop.index}] = ${i};
            </c:forEach>
            let priceArr = [];
            <c:forEach var="i" items="${priceArr}" varStatus="loop">
            priceArr[${loop.index}] = ${i};
            </c:forEach>
            document.getElementById('decrease-button').onclick = function () {
                let item = document.getElementsByClassName('input-product-quantity')[0];
                if (item.value !== '1') {
                    item.value = (parseInt(item.value) - 1) + '';
                }
                document.getElementsByName('form_quantity')[0].value = item.value;
                document.getElementsByName('form_quantity')[1].value = item.value;
            };
            document.getElementById('increase-button').onclick = function () {
                let item = document.getElementsByClassName('input-product-quantity')[0];
                let quantity = parseInt(document.getElementsByClassName('quantity')[0].innerHTML);
                item.value = Math.min(parseInt(item.value) + 1, quantity) + '';
                document.getElementsByName('form_quantity')[0].value = item.value;
                document.getElementsByName('form_quantity')[1].value = item.value;

            };

            document.getElementsByClassName('input-product-quantity')[0].oninput = function () {

                let item = document.getElementsByClassName('input-product-quantity')[0];
                if (item.value === '') {
                    item.value = 1;
                }
                if (isNaN(item.value)) {
                    item.value = item.value.substring(0, item.value.length - 1);
                }
                let quantity = parseInt(document.getElementsByClassName('quantity')[0].innerHTML);
                item.value = Math.min(parseInt(item.value), quantity) + '';
                document.getElementsByName('form_quantity')[0].value = item.value;
                document.getElementsByName('form_quantity')[1].value = item.value;
            };

            let item = document.getElementsByClassName('product-variation');
            for (let i = 0; i < item.length; i++) {
                if (item[i].innerHTML === 'null')
                    item[i].style.display = 'none';

            }

            item = document.getElementsByClassName('value1');
            if (item !== null)
                for (let i = 0; i < item.length; i++) {
                    item[i].onclick = function () {

                        if (item[i].classList.contains('selected')) {
                            item[i].classList.remove('selected');
                            document.getElementsByClassName('quantity')[0].innerHTML =
                                    "${quantity} sản phẩm có sẵn";
                            let price = ${product.getPrice()};
                            document.getElementsByClassName('current-price')[0].innerHTML =
                                    "₫" + getPriceString(price);
                            document.getElementsByClassName('index1')[0].value = "-1";
                            document.getElementsByClassName('index1')[1].value = "-1";
                        } else {
                            document.getElementsByClassName('index1')[0].value = i + "";
                            document.getElementsByClassName('index1')[1].value = i + "";
                            item[i].classList.add('selected');
                            for (let j = 0; j < item.length; j++) {
                                if (j !== i) {
                                    item[j].classList.remove('selected');
                                }
                            }
                            let url = item[i].value;

                            document.getElementsByClassName('main-product-image')[0].style.backgroundImage = 'url("' + url +
                                    '")';
                            let value2 = document.getElementsByClassName('value2');

                            for (let j = 0; j < value2.length; j++) {
                                if (value2[j].classList.contains('selected')) {
                                    document.getElementsByClassName('quantity')[0].innerHTML =
                                            quantityArr[i * 4 + j] + " sản phẩm có sẵn";
                                    document.getElementsByClassName('current-price')[0].innerHTML =
                                            "₫" + getPriceString(priceArr[i * 4 + j]);
                                    break;
                                }
                            }

                            if (document.getElementsByClassName('value2').length === 0) {
                                document.getElementsByClassName('quantity')[0].innerHTML =
                                        quantityArr[i * 4] + " sản phẩm có sẵn";
                                document.getElementsByClassName('current-price')[0].innerHTML =
                                        "₫" + getPriceString(priceArr[i * 4]);
                            }

                        }


                    };
                }
            let items = document.getElementsByClassName('value2');
            if (items !== null)
                for (let i = 0; i < items.length; i++) {
                    items[i].onclick = function () {

                        if (items[i].classList.contains('selected')) {
                            items[i].classList.remove('selected');
                            document.getElementsByClassName('quantity')[0].innerHTML =
                                    "${quantity} sản phẩm có sẵn";
                            let price = ${product.getPrice()};
                            document.getElementsByClassName('current-price')[0].innerHTML =
                                    "₫" + getPriceString(price);
                            document.getElementsByClassName('index2')[0].value = "-1";
                            document.getElementsByClassName('index2')[1].value = "-1";
                        } else {
                            document.getElementsByClassName('index2')[0].value = i + "";
                            document.getElementsByClassName('index2')[1].value = i + "";
                            items[i].classList.add('selected');
                            for (let j = 0; j < items.length; j++) {
                                if (j !== i) {
                                    items[j].classList.remove('selected');
                                }
                            }
                            let value1 = document.getElementsByClassName('value1');

                            for (let j = 0; j < value1.length; j++) {
                                if (value1[j].classList.contains('selected')) {
                                    document.getElementsByClassName('quantity')[0].innerHTML =
                                            quantityArr[j * 4 + i] + " sản phẩm có sẵn";
                                    document.getElementsByClassName('current-price')[0].innerHTML =
                                            "₫" + getPriceString(priceArr[j * 4 + i]);
                                    break;
                                }
                            }

                        }


                    };

                }
            function getPriceString(price) {
                let s = price + "";
                let n = s.length;
                let priceString = "";
                for (let i = 0; i < n; i++) {
                    priceString += s.charAt(i);
                    if ((n - i - 1) % 3 === 0 && i !== n - 1)
                        priceString += ".";
                }
                return priceString;
            }

            document.getElementById('cart-form').addEventListener("submit", function (event) {
                if (document.getElementsByClassName('index1')[0].value === '-1' && document.getElementsByClassName('value1').length > 0) {
                    event.preventDefault();
                    document.getElementsByClassName('notify-below')[0].style.display = 'block';
                }
                if (document.getElementsByClassName('index2')[0].value === '-1' && document.getElementsByClassName('value2').length > 0) {
                    event.preventDefault();
                    document.getElementsByClassName('notify-below')[0].style.display = 'block';
                }
            });

        </script>
    </body>

</html>