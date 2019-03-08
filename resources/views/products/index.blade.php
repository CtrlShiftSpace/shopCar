@extends('layouts.app')
@section('title', '商品列表')

@section('content')

<style>
.max{width:100%;height:auto;}
.min{width:100px;height:auto;}
</style>

<section id="breadcrumbRow" class="row">
        <h2>產品</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">product page</h4>
                <ul class="breadcrumb fright">
                    <li><a href="index.html">home</a></li>
                    <li class="active">product page</li>
                </ul>
            </div>
        </div>
    </section>

    <div class="row">
        <div class="col-lg-10 offset-lg-1">
            <div class="card">
                <div class="card-body">
                <!-- 筛选组件开始 -->
                    <form action="{{ route('products.index') }}" class="search-form">
                        <div class="form-row">
                            <div class="col-md-9">
                                <div class="form-row">
                                    <div class="col-auto"><input type="text" class="form-control form-control-sm" name="search" placeholder="搜尋"></div>
                                    <div class="col-auto"><button class="btn btn-primary btn-sm">搜尋產品</button></div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <select name="order" class="form-control form-control-sm float-right">
                                    <option value="">排序方式</option>
                                    <option value="price_asc">價格從低到高</option>
                                    <option value="price_desc">價格從高到低</option>
                                    <option value="sold_count_desc">銷量從高到低</option>
                                    <option value="sold_count_asc">銷量從低到高</option>
                                    <option value="rating_desc">評價從高到低</option>
                                    <option value="rating_asc">評價從低到高</option>
                                </select>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <section class="row contentRowPad">
        <div class="container">
            <div class="row">

                @foreach($products as $product)
        {{-- <div class="col-3 product-item">
          <div class="product-content">
            <div class="top">
              <div class="img">
                <a href="{{ route('products.show', ['product' => $product->id]) }}">
                  <img src="{{ $product->image_url }}" alt="">
                </a>
              </div>
              <div class="price"><b>＄</b>{{ $product->price }}</div>
              <div class="title">
                <a href="{{ route('products.show', ['product' => $product->id]) }}">{{ $product->title }}</a>
              </div>
            </div>
            <div class="bottom">
              <div class="sold_count">销量 <span>{{ $product->sold_count }}笔</span></div>
              <div class="review_count">评价 <span>{{ $product->review_count }}</span></div>
            </div>
          </div>
        </div>
      @endforeach--}}

                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img class='img' src="{{ $product->image_url }}" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>
                                </div>
                                <div class="row m0 proType"><a href="#">{{ $product->title }}</a></div>
                                <div class="row m0 proRating">
                                    <p style="font-size: large;">{{ str_repeat('◆', floor($product->rating)) }}{{ str_repeat('◇', 5 - floor($product->rating)) }}</p>
                                    {{--<i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>--}}
                                </div>
                            </div>
                        </div>


                        <div class="row m0 proName"><a href="{{ route('products.show', ['product' => $product->id]) }}">{{ $product->title }}</a></div>

                        <div class="row m0 proPrice"><i class="fa fa-usd"></i>{{ $product->price }}</div>
                        <div class="row m0 proBuyBtn">
                            {{--<button class="btn btn-primary btn-add-to-cart">新增至購物車</button>--}}
                            {{-- 商品數量預設為1個 --}}
                            <div class="cart_amount"><input type="hidden" class="form-control form-control-sm" value="1"></div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="float-right">{{ $products->appends($filters)->render() }}</div>  <!-- 只需要添加这一行 -->
        </div>
    </section>

{{--
<div class="row">
<div class="col-lg-10 offset-lg-1">
<div class="card">
  <div class="card-body">
    <!-- 筛选组件开始 -->
    <form action="{{ route('products.index') }}" class="search-form">
      <div class="form-row">
        <div class="col-md-9">
          <div class="form-row">
            <div class="col-auto"><input type="text" class="form-control form-control-sm" name="search" placeholder="搜索"></div>
            <div class="col-auto"><button class="btn btn-primary btn-sm">搜索</button></div>
          </div>
        </div>
        <div class="col-md-3">
          <select name="order" class="form-control form-control-sm float-right">
            <option value="">排序方式</option>
            <option value="price_asc">价格从低到高</option>
            <option value="price_desc">价格从高到低</option>
            <option value="sold_count_desc">销量从高到低</option>
            <option value="sold_count_asc">销量从低到高</option>
            <option value="rating_desc">评价从高到低</option>
            <option value="rating_asc">评价从低到高</option>
          </select>
        </div>
      </div>
    </form>
    <!-- 筛选组件结束 -->
    <div class="row products-list">
      @foreach($products as $product)
        <div class="col-3 product-item">
          <div class="product-content">
            <div class="top">
              <div class="img">
                <a href="{{ route('products.show', ['product' => $product->id]) }}">
                  <img src="{{ $product->image_url }}" alt="">
                </a>
              </div>
              <div class="price"><b>＄</b>{{ $product->price }}</div>
              <div class="title">
                <a href="{{ route('products.show', ['product' => $product->id]) }}">{{ $product->title }}</a>
              </div>
            </div>
            <div class="bottom">
              <div class="sold_count">销量 <span>{{ $product->sold_count }}笔</span></div>
              <div class="review_count">评价 <span>{{ $product->review_count }}</span></div>
            </div>
          </div>
        </div>
      @endforeach
    </div>
    <div class="float-right">{{ $products->appends($filters)->render() }}</div>  <!-- 只需要添加这一行 -->
  </div>
</div>
</div>
</div>
--}}
@endsection

@section('scriptsAfterJs')
<script>
  var filters = {!! json_encode($filters) !!};
  $(document).ready(function () {
    $('.search-form input[name=search]').val(filters.search);
    $('.search-form select[name=order]').val(filters.order);
    $('.search-form select[name=order]').on('change', function() {
      $('.search-form').submit();
    });



    // 加入购物车按钮点击事件
     /* $('.btn-add-to-cart').click(function () {

        // 请求加入购物车接口
        axios.post('{{ route('cart.add') }}', {
          sku_id: $('label.active input[name=skus]').val(),
          amount: $('.cart_amount input').val(),
        })
          .then(function () { // 请求成功执行此回调
            swal('加入購物車成功', '', 'success')
              .then(function() {
                location.href = '{{ route('cart.index') }}';
              });
          }, function (error) { // 请求失败执行此回调
            if (error.response.status === 401) {

              // http 状态码为 401 代表用户未登陆
              swal('請先登入', '', 'error');

            } else if (error.response.status === 422) {

              // http 状态码为 422 代表用户输入校验失败
              var html = '<div>';
              _.each(error.response.data.errors, function (errors) {
                _.each(errors, function (error) {
                  html += error+'<br>';
                })
              });
              html += '</div>';
              swal({content: $(html)[0], icon: 'error'})
            } else {

              // 其他情况应该是系统挂了
              swal('系統發生錯誤', '', 'error');
            }
          })
      });*/

  })


</script>
@endsection
