@extends('layouts.app')
@section('title', $product->title)

@section('content')

<section id="breadcrumbRow" class="row">
    <h2>商品詳情</h2>
    <div class="row pageTitle m0">
        <div class="container">
            <h4 class="fleft">商品詳情</h4>
            <ul class="breadcrumb fright">
                <li><a href="index.html">home</a></li>
                <li class="active">single product</li>
            </ul>
        </div>
    </div>
</section>

<section class="row contentRowPad">
        <div class="container">
            <div class="row singleProduct">
                <div class="col-sm-7">
                    <div class="row m0 flexslider" id="productImageSlider">
                        <ul class="slides">
                            <li><img src="{{ $product->image_url }}" alt=""></li>
                            <li><img src="{{ asset('images/product/single/1.png') }}" alt=""></li>
                            <li><img src="{{ asset('images/product/single/1.png') }}" alt=""></li>
                            <li><img src="{{ asset('images/product/single/1.png') }}" alt=""></li>
                            <li><img src="{{ asset('images/product/single/1.png') }}" alt=""></li>
                        </ul>
                    </div>
                    <div class="row m0 flexslider" id="productImageSliderNav">
                        <ul class="slides">
                            <li><img class="img-thumbnail" src="{{ $product->image_url }}" alt=""></li>
                            <li><img class="img-thumbnail" src="{{ asset('images/product/single/l2.png') }}" alt=""></li>
                            <li><img class="img-thumbnail" src="{{ asset('images/product/single/l3.png') }}" alt=""></li>
                            <li><img class="img-thumbnail" src="{{ asset('images/product/single/l4.png') }}" alt=""></li>
                            <li><img class="img-thumbnail" src="{{ asset('images/product/single/l5.png') }}" alt=""></li>
                            <li><img class="img-thumbnail" src="{{ asset('images/product/single/l3.png') }}" alt=""></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="row m0">
                        <h4 class="heading">{{ $product->title }}</h4>

                        {{-- <div class="price"><label>价格</label><em>￥</em><span>{{ $product->price }}</span></div> --}}

                        <h3 class="heading price"><del>$580</del>$<span>{{ $product->price }}</span></h3>
                        <div class="row m0 starsRow">
                            <div class="rating stars fleft" title="評分 {{ $product->rating }}">評分 <span class="count" style="font-size:18px;">{{ str_repeat('◆', floor($product->rating)) }}{{ str_repeat('◇', 5 - floor($product->rating)) }}</span></div>
                            {{-- <div class="stars fleft">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-empty"></i>
                            </div>--}}
                            <div class="fleft">
                                5 則評論 <span>|</span> <a href="#">Add Your Review</a>
                            </div>
                        </div>

                        {{--<div class="sold_count">累積銷量 <span class="count">{{ $product->sold_count }}</span></div>
          <div class="review_count">累積評價 <span class="count">{{ $product->review_count }}</span></div>--}}
                        <div class="row descList m0">
                            <dl class="dl-horizontal">
                                <dt>庫存量 :</dt>
                                <dd><span class="stock"></span></dd>
                                <dt>累積銷量 :</dt>
                                <dd>{{ $product->sold_count }}</dd>
                                <dt>累積評價 :</dt>
                                <dd>{{ $product->review_count }}</dd>
                            </dl>
                        </div>
                        <div class="row m0 shortDesc">
                            <p class="m0">Rustic, natural, often made of bark-covered logs or simple planks. Look for junk shop finds when in the country (for authenticity), or purchase hand-made new versions.</p>
                        </div>

                        <div class="skus">
                            <label>選擇</label>
                                <div class="row m0 colorSelect " data-toggle="buttons">
                                @foreach($product->skus as $sku)
                                  <label
                                      class="btn sku-btn"
                                      data-price="{{ $sku->price }}"
                                      data-stock="{{ $sku->stock }}"
                                      data-toggle="tooltip"
                                      title="{{ $sku->description }}"
                                      data-placement="bottom">
                                        <input type="radio" name="skus" autocomplete="off" value="{{ $sku->id }}"> {{ $sku->title }}
                                  </label>
                                @endforeach
                              </div>
                            </div>

                        {{--<div class="row m0 colorSelect">
                            <h5 class="heading proAttr">顏色 :</h5>
                            <input type="radio" id="cl1" name="proColor" checked>
                            <label for="cl1"><span></span></label>
                            <input type="radio" id="cl2" name="proColor">
                            <label for="cl2"><span></span></label>
                            <input type="radio" id="cl3" name="proColor">
                            <label for="cl3"><span></span></label>
                            <input type="radio" id="cl4" name="proColor">
                            <label for="cl4"><span></span></label>
                            <input type="radio" id="cl5" name="proColor">
                            <label for="cl5"><span></span></label>
                            <input type="radio" id="cl6" name="proColor">
                            <label for="cl6"><span></span></label>
                        </div>--}}
                        <div class="row m0">
                            <h5 class="heading proAttr">大小 :</h5>
                            <select class="selectpicker sizeSelect">
                                <option value="queen">queen</option>
                                <option value="red">red</option>
                                <option value="black">black</option>
                                <option value="white">white</option>
                            </select>
                        </div>
                        <div class="row m0">
                            <ul class="list-inline wce">
                                <li><a href="#"><img src="images/icons/heart.png" alt="">Add to Wishlist</a></li>
                                <li><a href="#"><img src="images/icons/compare.png" alt="">Add to Compare</a></li>
                                <li><a href="#"><img src="images/icons/email.png" alt="">Email to a Friend</a></li>
                            </ul>
                        </div>

                        {{--<div class="cart_amount"><label>数量</label><input type="text" class="form-control form-control-sm" value="1"><span>件</span><span class="stock"></span></div>--}}

                        <div class="row m0 qtyAtc">
                            <div class="fleft quantity">
                                <div class="fleft">數量 <span>=</span></div>
                                <div class="input-group spinner">
                                    <div class="cart_amount">
                                        <input type="text" class="form-control" value="2">
                                    </div>
                                    <div class="input-group-btn-vertical">
                                        <button class="btn btn-default"><i class="fa fa-angle-up"></i></button>
                                        <button class="btn btn-default"><i class="fa fa-angle-down"></i></button>
                                    </div>
                                </div>
                            </div>
                            @if($favored)
                            <button class="btn btn-danger btn-disfavor">取消收藏</button>
                            @else
                            <button class="btn btn-success btn-favor">❤ 收藏</button>
                            @endif
                            <button class="btn btn-primary btn-add-to-cart">加入購物車</button>

                            {{-- <button class="fleft btn btn-default"><img src="images/icons/cart3.png" alt=""> add to cart</button> --}}

                        </div>
                    </div>
                </div>
            </div>
            <div class="row m0 tabRow">
                <ul class="nav nav-tabs" role="tablist" id="shortcodeTab">
                    <li role="presentation" class="active"><a href="#description" aria-controls="description" role="tab" data-toggle="tab">
                        <i class="fa fa-align-left"></i> 商品詳情
                    </a></li>
                    <li role="presentation"><a href="#review" aria-controls="review" role="tab" data-toggle="tab">
                        <i class="fa fa-thumbs-up"></i> 用户評價
                    </a></li>
                    <li role="presentation"><a href="#additionInfo" aria-controls="additionInfo" role="tab" data-toggle="tab">
                        <i class="fa fa-file-text"></i> 其它資訊
                    </a></li>
                </ul>
                <div class="tab-content shortcodeTabContent">
                    <div role="tabpanel" class="tab-pane row m0 active" id="description">
                        <div class="fleft img"><img src="{{ asset('images/product/tab-desc.png') }}" alt=""></div>
                        <div class="fleft desc">
                            <h5 class="heading">商品詳情</h5>
                            <p>{!! $product->description !!}</p>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane row m0" id="review">
                        <div class="row m0 reviewCount">1 review for comfortable dining table</div>

                        <table class="table table-bordered table-striped">
            <thead>
            <tr>
              <td>用户</td>
              <td>商品</td>
              <td>评分</td>
              <td>评价</td>
              <td>时间</td>
            </tr>
            </thead>
            <tbody>
            @foreach($reviews as $review)
              <tr>
                <td>{{ $review->order->user->name }}</td>
                <td>{{ $review->productSku->title }}</td>
                <td>{{ str_repeat('◆', $review->rating) }}{{ str_repeat('◇', 5 - $review->rating) }}</td>
                <td>{{ $review->review }}</td>
                <td>{{ $review->reviewed_at->format('Y-m-d H:i') }}</td>
              </tr>
            @endforeach
            </tbody>
          </table>
          <!-- 评论列表结束 -->




                        {{--<div class="row m0 reviewBody">
                            <span class="bold">4</span> out of 5 <br>
                            <span class="bold">K Admas</span> - March 10, 2014
                            <p class="m0">Amazing Product!</p>
                        </div>
                        <div class="row m0 reviewAdd">
                            <h4 class="heading">Add a review</h4>
                            <form action="#" role="form" method="post" class="row m0 reviewForm">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" placeholder="Your Name *" required>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="email" class="form-control" placeholder="Your Email *" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <input type="url" class="form-control" placeholder="Your Website">
                                    </div>
                                    <div class="col-sm-6 ratingStars">
                                        Your Rating <input type="hidden" class="rating" data-fractions="2">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h4 class="heading">Your Review</h4>
                                        <textarea name="reviewText" id="reviewText" class="form-control reviewText"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <input type="submit" class="btn btn-primary filled">
                                    </div>
                                </div>
                            </form>
                        </div>
                        --}}
                    </div>
                    <div role="tabpanel" class="tab-pane row m0" id="additionInfo">
                        <div class="row m0 additionInfoRow">
                            <div class="fleft infoTitle">Color</div>
                            <div class="fleft infos">Blue, Black, Red, Yellow</div>
                        </div>
                        <div class="row m0 additionInfoRow">
                            <div class="fleft infoTitle">Size</div>
                            <div class="fleft infos">S, M, L, XL</div>
                        </div>
                    </div>
                </div>
            </div> <!--Tabs Row-->
            <div class="row shortcodesRow m0">
                <div class="row sectionTitle">
                    <h3>latest products</h3>
                    <h5>know more about our latest collection</h5>
                </div>
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="images/product/pro1p/1.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>455.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">colorful sofa</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">add to cart</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="images/product/pro1p/2.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>455.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">colorful sofa</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">add to cart</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="images/product/pro1p/3.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>455.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">colorful sofa</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">add to cart</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="images/product/pro1p/4.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i></a></li>
                                    </ul>
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fa fa-usd"></i>455.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="single-product.html">colorful sofa</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">add to cart</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

{{--
<div class="container">
<div class="row">
<div class="col-lg-10 offset-lg-1">
<div class="card">
  <div class="card-body product-info">
    <div class="row">
      <div class="col-5">
        <img class="cover" src="{{ $product->image_url }}" alt="">
      </div>
      <div class="col-7">
        <div class="title">{{ $product->title }}</div>
        <div class="price"><label>价格</label><em>￥</em><span>{{ $product->price }}</span></div>
        <div class="sales_and_reviews">
          <div class="sold_count">累计销量 <span class="count">{{ $product->sold_count }}</span></div>
          <div class="review_count">累计评价 <span class="count">{{ $product->review_count }}</span></div>
          <div class="rating" title="评分 {{ $product->rating }}">评分 <span class="count">{{ str_repeat('◆', floor($product->rating)) }}{{ str_repeat('◇', 5 - floor($product->rating)) }}</span></div>
        </div>
        <div class="skus">
          <label>选择</label>
          <div class="btn-group btn-group-toggle" data-toggle="buttons">
            @foreach($product->skus as $sku)
              <label
                  class="btn sku-btn"
                  data-price="{{ $sku->price }}"
                  data-stock="{{ $sku->stock }}"
                  data-toggle="tooltip"
                  title="{{ $sku->description }}"
                  data-placement="bottom">
                <input type="radio" name="skus" autocomplete="off" value="{{ $sku->id }}"> {{ $sku->title }}
              </label>
            @endforeach
          </div>
        </div>
        <div class="cart_amount"><label>数量</label><input type="text" class="form-control form-control-sm" value="1"><span>件</span><span class="stock"></span></div>
        <div class="buttons">
          @if($favored)
            <button class="btn btn-danger btn-disfavor">取消收藏</button>
          @else
            <button class="btn btn-success btn-favor">❤ 收藏</button>
          @endif
          <button class="btn btn-primary btn-add-to-cart">加入购物车</button>
        </div>
      </div>
    </div>
    <div class="product-detail">
      <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" href="#product-detail-tab" aria-controls="product-detail-tab" role="tab" data-toggle="tab" aria-selected="true">商品详情</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#product-reviews-tab" aria-controls="product-reviews-tab" role="tab" data-toggle="tab" aria-selected="false">用户评价</a>
        </li>
      </ul>
      <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="product-detail-tab">
          {!! $product->description !!}
        </div>
        <div role="tabpanel" class="tab-pane" id="product-reviews-tab">
          <!-- 评论列表开始 -->
          <table class="table table-bordered table-striped">
            <thead>
            <tr>
              <td>用户</td>
              <td>商品</td>
              <td>评分</td>
              <td>评价</td>
              <td>时间</td>
            </tr>
            </thead>
            <tbody>
            @foreach($reviews as $review)
              <tr>
                <td>{{ $review->order->user->name }}</td>
                <td>{{ $review->productSku->title }}</td>
                <td>{{ str_repeat('◆', $review->rating) }}{{ str_repeat('◇', 5 - $review->rating) }}</td>
                <td>{{ $review->review }}</td>
                <td>{{ $review->reviewed_at->format('Y-m-d H:i') }}</td>
              </tr>
            @endforeach
            </tbody>
          </table>
          <!-- 评论列表结束 -->
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</div>
</div>

--}}
@endsection

@section('scriptsAfterJs')
  <script>
    $(document).ready(function () {
      $('[data-toggle="tooltip"]').tooltip({trigger: 'hover'});
      $('.sku-btn').click(function () {
        //修改商品數量
        $('.price span').text($(this).data('price'));
        $('.descList .stock').text($(this).data('stock') + '件');
      });

      // 监听收藏按钮的点击事件
      $('.btn-favor').click(function () {
        // 发起一个 post ajax 请求，请求 url 通过后端的 route() 函数生成。
        axios.post('{{ route('products.favor', ['product' => $product->id]) }}')
          .then(function () { // 请求成功会执行这个回调
            swal('操作成功', '', 'success')
              .then(function () {  // 这里加了一个 then() 方法
                location.reload();
              });
          }, function(error) { // 请求失败会执行这个回调
            // 如果返回码是 401 代表没登录
            if (error.response && error.response.status === 401) {
              swal('请先登录', '', 'error');
            } else if (error.response && error.response.data.msg) {
              // 其他有 msg 字段的情况，将 msg 提示给用户
              swal(error.response.data.msg, '', 'error');
            }  else {
              // 其他情况应该是系统挂了
              swal('系統錯誤', '', 'error');
            }
          });
      });

      $('.btn-disfavor').click(function () {
        axios.delete('{{ route('products.disfavor', ['product' => $product->id]) }}')
          .then(function () {
            swal('操作成功', '', 'success')
              .then(function () {
                location.reload();
              });
          });
      });

      // 加入购物车按钮点击事件
      $('.btn-add-to-cart').click(function () {

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
              swal('系統錯誤', '', 'error');
            }
          })
      });

    });
  </script>
@endsection
