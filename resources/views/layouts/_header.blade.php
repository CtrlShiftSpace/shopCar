 {{--<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-static-top">
  <div class="container">
    <!-- Branding Image -->
    <a class="navbar-brand " href="{{ url('/') }}">
      Laravel Shop
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <!-- Left Side Of Navbar -->
      <ul class="navbar-nav mr-auto">

      </ul>

      <!-- Right Side Of Navbar -->
      <ul class="navbar-nav navbar-right">
        <!-- 登录注册链接开始 -->
        @guest
        <li class="nav-item"><a class="nav-link" href="{{ route('login') }}">登录</a></li>
        <li class="nav-item"><a class="nav-link" href="{{ route('register') }}">注册</a></li>
        @else
        <li class="nav-item">
          <a class="nav-link mt-1" href="{{ route('cart.index') }}"><i class="fa fa-shopping-cart"></i></a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <img src="https://iocaffcdn.phphub.org/uploads/images/201709/20/1/PtDKbASVcz.png?imageView2/1/w/60/h/60" class="img-responsive img-circle" width="30px" height="30px">
            {{ Auth::user()->name }}
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a href="{{ route('user_addresses.index') }}" class="dropdown-item">收货地址</a>
            <a href="{{ route('orders.index') }}" class="dropdown-item">我的订单</a>
            <a href="{{ route('products.favorites') }}" class="dropdown-item">我的收藏</a>
            <a class="dropdown-item" id="logout" href="#"
               onclick="event.preventDefault();document.getElementById('logout-form').submit();">退出登录</a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
              {{ csrf_field() }}
            </form>
          </div>
        </li>
        @endguest
        <!-- 登录注册链接结束 -->
      </ul>
    </div>
  </div>
</nav>
--}}

<header class="row" id="header">
    <div class="row m0 top_menus">
        <div class="container">
            <div class="row">
                <ul class="nav nav-pills fleft">
                    @guest
                    <li><a href="{{ route('login') }}"><i class="fa fa-sign-in"></i> 登入</a></li>
                    <li><a href="{{ route('register') }}"><i class="fa fa-pencil-square-o"></i> 註冊</a></li>

                    @else

                    <li>
                        <a>
                            {{-- <img src="https://iocaffcdn.phphub.org/uploads/images/201709/20/1/PtDKbASVcz.png?imageView2/1/w/60/h/60" width="30px" height="30px"> --}}
                            {{ Auth::user()->name }}，您好
                        </a>
                    </li>

                    <li>
                        <a href="{{ route('cart.index') }}"><i class="fa fa-shopping-cart"></i> 購物車(2)</a>
                    </li>

                    <li><a href="{{ route('user_addresses.index') }}" ><i class="fa fa-map-marker"></i> 收貨地址</a></li>
                    <li><a href="{{ route('orders.index') }}" class="dropdown-item"> <i class="fa fa-barcode"></i> 我的訂單</a></li>
                    <li><a href="{{ route('products.favorites') }}" class="dropdown-item"><i class="fa fa-heart"></i> 我的收藏(3)</a></li>
                    <li><a class="dropdown-item" id="logout" href="#"
                           onclick="event.preventDefault();document.getElementById('logout-form').submit();"><i class="fa fa-sign-out"></i> 登出</a></li>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        {{ csrf_field() }}
                    </form>
                    @endguest
                </ul>
            </div>
        </div>
    </div>
    <div class="row m0 logo_line">
        <div class="container">
            <div class="row">
                <div class="col-sm-5 logo">
                    <a href="{{ url('/') }}" class="logo_a"><img src="{{ asset('images/logo.png') }}" alt="Furniture House"></a>
                </div>
                <div class="col-sm-7 searchSec">
                    <div class="fleft searchForm">

                        <form action="{{ route('products.index') }}" class="search-form">
                            <div class="input-group">
                                {{--<input type="hidden" name="search_param" value="all" id="search_param">
                                <input type="search" class="form-control" placeholder="Search Products">--}}
                                <input type="text" class="form-control form-control-sm" name="search" placeholder="搜尋">
                                <span class="input-group-btn searchIco">
                                    <button class="btn btn-default" type="submit">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div><!-- /input-group -->
                        </form>
                    </div>
                    <div class="fleft wishlistCompare">
                        <ul class="nav">
                            <li><a href="#"><i class="fa fa-heart"></i> Wishlist (3)</a></li>
                            <li><a href="#"><i class="fa fa-exchange"></i> Compare (2)</a></li>
                        </ul>
                    </div>
                    <div class="fleft cartCount">
                        <div class="cartCountInner row m0">
                            <span class="badge">2</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-default m0 navbar-static-top">
        <div class="container-fluid container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mainNav">
                    <i class="fa fa-bars"></i> 選單
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="mainNav">
                <ul class="nav navbar-nav">
                    <li><a href="index.html">首頁</a></li>
                    <li><a href="about.html">關於我們</a></li>
                    <li><a href="contact.html">聯絡我們</a></li>
                    <li><a href="product.html">產品</a></li>
                    <li><a href="single-product.html">Single Product</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div class="row topFeatures m0">
        <div class="container">
            <ul class="nav nav-justified text-center">
                <li><img src="{{ asset('images/icons/returns.png') }}" alt="">下單便利</li>
                <li><img src="{{ asset('images/icons/delivery-car.png') }}" alt="">快速送貨</li>
                <li><img src="{{ asset('images/icons/tel24-7.png') }}" alt=""> 客服支援</li>
            </ul>
        </div>
    </div>
</header> <!--Header-->

