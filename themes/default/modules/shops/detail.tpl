<!-- BEGIN: rating -->
<div class="clearfix star_home rate-stars-{num_star}"></div>
<!-- END: rating -->
<!-- BEGIN: main -->
<div id="fb-root"></div>
<script type="text/javascript" data-show="after">
    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id))
            return;
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/{FACEBOOK_LANG}/all.js#xfbml=1&appId={FACEBOOK_APPID}";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>

<div itemscope itemtype="http://schema.org/Product" style="display: none">
    <span itemprop="name">{TITLE}</span>
    <img itemprop="image" src="{SRC_PRO_LAGE}" alt="{TITLE}" />
    <span itemprop="description">{hometext}</span>
    <span itemprop="mpn">{PRODUCT_CODE}</span>
    <!-- BEGIN: allowed_rating_snippets -->
    <span itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating"> <span itemprop="ratingValue">{RATE_VALUE}</span> {LANG.trong} <span itemprop="reviewCount">{RATE_TOTAL} </span> {LANG.dg} </span>
    <!-- END: allowed_rating_snippets -->
    <span itemprop="offers" itemscope itemtype="http://schema.org/Offer"> <span itemprop="category">{CAT_TITLE}</span> <!-- BEGIN: price1 --> <span itemprop="price">{PRICE.sale_format}</span> <span itemprop="priceCurrency">{PRICE.unit}</span> <!-- END: price1 --> <span itemprop="availability">{LANG.detail_pro_number}: {PRODUCT_NUMBER} {pro_unit}</span> </span>
</div>
<script src='{NV_BASE_SITEURL}themes/{TEMPLATE}/js/jquery.elevatezoom308.min.js' type='text/javascript'></script>

<script src='{NV_BASE_SITEURL}themes/{TEMPLATE}/js/lightgallery-all.min.js' type='text/javascript'></script>

<link href='{NV_BASE_SITEURL}themes/{TEMPLATE}/css/prettyphoto.css' rel='stylesheet' type='text/css' />
<link href='{NV_BASE_SITEURL}themes/{TEMPLATE}/css/lightgallery.min.css' rel='stylesheet' type='text/css' />
<link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.css" rel="stylesheet" type="text/css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.js" type="text/javascript"></script>
<script src='{NV_BASE_SITEURL}themes/{TEMPLATE}/js/jquery.prettyphoto.min005e.js' type='text/javascript'></script>
<script src='{NV_BASE_SITEURL}themes/{TEMPLATE}/js/jquery.prettyphoto.init.min367a.js' type='text/javascript'></script>
<style>
    .fixed-size.lg-outer .lg-img-wrap {
        padding: 12px;
    }
    #product-main .slide-arrow.slick-arrow {
    background: repeat scroll 0 0 #04335e;
    position: absolute;
    top: 25%;
    bottom: 0;
    width: 30px;
    height: 30px;
    line-height: 30px;
    opacity: 1;
    font-size: 25px;
    color: #fff;
    z-index: 1;
    border-radius: 0;
    text-align: center;
    border: none;
    outline: none;
}

#product-main .slide-arrow.slick-arrow:hover {
    background: #ff9100;
}

#product-main button.slide-arrow.prev-arrow.slick-arrow {
    left: 0px;
}

#product-main button.slide-arrow.next-arrow.slick-arrow {
    right: 0px;
}

#product-main .portfolio-thumb-slider .slick-track .slick-slide img {
    padding: 10px;
}
</style>
<script type="text/javascript">
    $(document).ready(function () {
        $("#product-main .portfolio-thumb-slider").slick({
            slidesToShow: 4,
            slidesToScroll: 1,
            asNavFor: ".portfolio-item-slider",
            dots: false,
            arrows: true,
            focusOnSelect: true,
            prevArrow: '<button class="slide-arrow prev-arrow"><i class="fas fa-caret-left"></i></button>',
            nextArrow: '<button class="slide-arrow next-arrow"><i class="fas fa-caret-right"></i></button>'
        });

        $("#product-main  .portfolio-item-slider").slick({
            slidesToShow: 1,
            infinite: false,
            // slidesToScroll: 1,
            arrows: false,
            asNavFor: ".portfolio-thumb-slider"
        });

        if ($(window).width() > 991) {
            $(".slick-current.slick-active .zoom").elevateZoom({
                borderSize: 3
            });
        }

        $("#product-main .portfolio-item-slider").on(
            "afterChange",
            function (event, slick, currentSlide, nextSlide) {
                if ($(window).width() > 991) {

                    $(document).find('.zoom').each((i,e)=>{
                        $.removeData(e, 'elevateZoom');//remove zoom instance from image
                        $('.zoomContainer').remove();// remove zoom container from DOM
                    })
                    
                    $(".slick-current.slick-active .zoom").elevateZoom({
                        borderSize: 3
                    });
                }
            }
        );

        $("#lightgallery").lightGallery({
            selector: '.slick-slider-item',
            download: false,
            width: '700px',
            height: '470px',
            mode: 'lg-fade',
            addClass: 'fixed-size',
            counter: false,
            download: false,
            startClass: '',
            enableSwipe: false,
            enableDrag: false,
            speed: 500
        });
    });
</script>

<div class="details-product">
    <div class="row">
        <div class="col-md-8">
            <div id="product-main" class="product-images large-image">
                <div class="portfolio-item-slider" id="lightgallery">
                    <!-- BEGIN: my_image -->
                    <div class="slick-slider-item" data-src="{SRC_PRO_LAGE}">
                        <img class="zoom" src="{SRC_PRO_LAGE}" data-zoom-image="{SRC_PRO_LAGE}" />
                    </div>
                    <!-- BEGIN: loop -->
                    <div class="slick-slider-item" data-src="{IMG_SRC_OTHER}">
                        <img class="zoom" src="{IMG_SRC_OTHER}" data-zoom-image="{IMG_SRC_OTHER}" />
                    </div>
                    <!-- END: loop -->
                    <!-- END: my_image -->
                </div>
    
                <!-- BEGIN: other_image -->
                <div class="portfolio-thumb-slider">
                    <div class="slick-slider-item">
                        <img src="{SRC_PRO_LAGE}"/>
                    </div>
                    {PRODUCT_OTHER_IMAGES}
                </div>
                <!-- END: other_image -->
            </div>

            <div class="social-sharing" style="margin: 0 10px; text-align: center">
                <div class="social-media" data-permalink="{SELFURL}">
                    <label>Chia sẻ: </label>
                    <a target="_blank" href="//www.facebook.com/sharer.php?u={SELFURL}" class="share-facebook" title="Chia sẻ lên Facebook" style="margin: 0 10px">
                        <i class="fa fa-facebook-official"></i>
                    </a>
                    <a target="_blank" href="//twitter.com/share?text=hong-do-my" class="share-twitter" title="Chia sẻ lên Twitter" style="margin: 0 10px">
                        <i class="fa fa-twitter"></i>
                    </a>
                    <a target="_blank" href="//pinterest.com/pin/create/button/?url={SELFURL}" class="share-pinterest" title="Chia sẻ lên pinterest" style="margin: 0 10px">
                        <i class="fa fa-pinterest"></i>
                    </a>
                    <a target="_blank" href="//plus.google.com/share?url={SELFURL}" class="share-google" title="+1" style="margin: 0 10px">
                        <i class="fa fa-google-plus"></i>
                    </a>
                </div>
            </div>
            <div class="alert alert-warning alert-dismissible margin-top-20" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                [QR_CODE]
            </div>
        </div>
        <div class="col-md-10 details-pro">
            <h1 class="product-name" itemprop="name">{TITLE}</h1>
            <!-- BEGIN: review -->
            <div class="col-xs-14">
                {review_star}
                <div class="help-block pointer fl" onclick="scrollToxx();"><span>Viết đánh giá</span></div>
            </div>
            <div class="clear"></div>
            <!-- END: review -->
            <div class="status clearfix">
                Trạng thái:
                <span class="inventory">
                    <!-- BEGIN: status0 -->
                    <i class="fa fa-check"></i> Sẵn hàng
                    <!-- END: status0 -->
                    <!-- BEGIN: status1 -->
                    <i class="fa fa-phone"></i> Cần đặt trước
                    <!-- END: status1 -->
                </span>
            </div>
            <div class="product-vendor">
                <!-- BEGIN: product_code -->
                <span><b>{LANG.product_code}: </b>{PRODUCT_CODE}</span>
                <!-- END: product_code -->
            </div>
            <!-- BEGIN: price -->
            <div class="price-box">
                <!-- BEGIN: no_discounts -->
                <div class="special-price"><span class="price product-price">{PRICE.price_format}&nbsp;{PRICE.unit}</span> </div>
                <!-- END: no_discounts -->
                <!-- BEGIN: discounts -->
                <div class="special-price"><span class="price product-price">{PRICE.sale_format}&nbsp;{PRICE.unit}</span> </div>
                <span class="price product-price-old">{PRICE.price_format}&nbsp;{PRICE.unit}</span>
                <!-- END: discounts -->
            </div>
            <!-- END: price -->
            <!-- BEGIN: contact -->
            <div class="price-box">
                <div class="special-price">{LANG.detail_pro_price}: <span class="price product-price">{LANG.price_contact}</span> </div>
            </div>
            <!-- END: contact -->
            <!-- BEGIN: hometext -->
            <div class="product-policy">
                {hometext}
            </div>
            <!-- END: hometext -->

            <div class="form-product ">
                <div class="">
                    <!-- BEGIN: gift -->
                    <div class="alert alert-info">
                        <div class="pull-left">
                            <em class="fa fa-gift fa-3x">&nbsp;</em>
                        </div>
                        <div class="pull-left">
                            <h4>{gift_content}</h4>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!-- END: gift -->
                    <!-- BEGIN: group -->
                    <div class="well">
                        <div class="filter_product">
                            <!-- BEGIN: items -->
                            <div class="row">
                                <!-- BEGIN: header -->
                                <div class="col-xs-8 col-sm-5" style="margin-top: 4px">
                                    {HEADER}
                                </div>
                                <!-- END: header -->
                                <div class="col-xs-16 col-sm-19 itemsgroup" data-groupid="{GROUPID}" data-header="{HEADER}">
                                    <!-- BEGIN: loop -->
                                    <label class="label_group <!-- BEGIN: active -->active<!-- END: active -->">
                                        <input type="radio" class="groupid" onclick="check_quantity( $(this) )" name="groupid[{GROUPID}]" value="{GROUP.groupid}" <!-- BEGIN: checked -->checked="checked"
                                        <!-- END: checked -->>{GROUP.title}
                                    </label>
                                    <!-- END: loop -->
                                </div>
                            </div>
                            <!-- END: items -->
                        </div>
                        <span id="group_error">&nbsp;</span>
                    </div>
                    <!-- END: group -->
                    <div class="form-inline">
                        <div class="form-group">
                            <!-- BEGIN: order_number -->
                            <div class="custom custom-btn-number">
                                <button onclick="var result = document.getElementById('pnum'); var pnum = result.value; if( !isNaN(pnum) &amp; pnum > 1 ) result.value--;return false;" class="btn-minus btn-cts" type="button">-</button>
                                <input type="text" class="qty input-text" id="pnum" name="num" size="4" value="1" />
                                <button onclick="var result = document.getElementById('pnum'); var pnum = result.value; if( !isNaN(pnum)) result.value++;return false;" class="btn-plus btn-cts" type="button">+</button>
                                <!-- BEGIN: product_number -->

                                <span style="margin-left: 10px" class="help-block pull-left" id="product_number">{LANG.detail_pro_number}: <strong>{PRODUCT_NUMBER}</strong> {pro_unit}</span>
                                <div class="clear"></div>
                                <!-- END: product_number -->
                            </div>
                            <!-- END: order_number -->
                            <!-- BEGIN: order -->
                            <button class="btn btn-success btn-order" data-id="{proid}" onclick="cartorder_detail(this, '{POPUP}', 0); return false;">
                                <em class="fa fa-shopping-basket fa-lg">&nbsp;</em>
                                <span class="hidden-xs">{LANG.add_cart}</span>
                            </button>
                            <button class="btn btn-success btn-order" data-id="{proid}" onclick="cartorder_detail(this, '{POPUP}', 1); return false;">
                                <em class="fa fa-cart-plus fa-lg">&nbsp;</em>
                                <span class="hidden-xs">{LANG.buy_now}</span>
                            </button>
                            <!-- END: order -->
                        </div>
                    </div>

                    <div class="clearfix"></div>

                    <!-- BEGIN: typepeice -->
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th class="text-right">{LANG.detail_pro_number}</th>
                                <th class="text-left">{LANG.cart_price} ({money_unit})</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- BEGIN: items -->
                            <tr>
                                <td class="text-right">{ITEMS.number_from} -> {ITEMS.number_to}</td>
                                <td class="text-left">{ITEMS.price}</td>
                            </tr>
                            <!-- END: items -->
                        </tbody>
                    </table>
                    <!-- END: typepeice -->

                    <!-- BEGIN: product_empty -->
                    <button class="btn btn-danger disabled">{LANG.product_empty}</button>
                    <!-- END: product_empty -->
                </div>
            </div>
            <!--    <div class="social-sharing" style="margin: 15px 0">
                <div class="social-media" data-permalink="{SELFURL}">
                    <label>Chia sẻ: </label>
                    <a target="_blank" href="//www.facebook.com/sharer.php?u={SELFURL}" class="share-facebook" title="Chia sẻ lên Facebook">
                        <i class="fa fa-facebook-official"></i>
                    </a>
                    <a target="_blank" href="//twitter.com/share?text=hong-do-my" class="share-twitter" title="Chia sẻ lên Twitter">
                        <i class="fa fa-twitter"></i>
                    </a>
                    <a target="_blank" href="//pinterest.com/pin/create/button/?url={SELFURL}" class="share-pinterest" title="Chia sẻ lên pinterest">
                        <i class="fa fa-pinterest"></i>
                    </a>
                    <a target="_blank" href="//plus.google.com/share?url={SELFURL}" class="share-google" title="+1">
                        <i class="fa fa-google-plus"></i>
                    </a>
                </div>
            </div> -->
        </div>
        <div class="visible-lg visible-md col-md-6">
            [HOTRMUAHANG]
        </div>
        <div class="clear"></div>
        <!-- BEGIN: product_detail -->
        <!-- BEGIN: keywords -->
        <div class="panel panel-default pull-left">
            <div class="panel-body">
                <div class="keywords">
                    <em class="fa fa-tags">&nbsp;</em><strong>{LANG.keywords}: </strong>
                    <!-- BEGIN: loop -->
                    <a title="{KEYWORD}" href="{LINK_KEYWORDS}"><em>{KEYWORD}</em></a>{SLASH}
                    <!-- END: loop -->
                </div>
            </div>
        </div>
        <!-- END: keywords -->
        <!-- BEGIN: tabs -->
        <div class="clear"></div>
        <div class="row">
            <div class="col-md-18" id="product-tab">
                <ul class="nav nav-inline nav-tab-detailspro clearfix" role="tablist">
                    <!-- BEGIN: tabs_title -->
                    <li class="nav-item <!-- BEGIN: active -->active<!-- END: active -->">
                        <a class="nav-link {TABS_KEY}" data-toggle="tab" href="#{TABS_KEY}-{TABS_ID}" role="tab">{TABS_TITLE}</a>
                    </li>
                    <!-- END: tabs_title -->
                </ul>
                <div class="tab-content-detailspro">
				<div class="rte wrap-box-readmore">	   
				<div class="tab-content">
                    <!-- BEGIN: tabs_content -->
						<div class="tab-pane {TABS_KEY} fade <!-- BEGIN: active -->active in<!-- END: active -->" id="{TABS_KEY}-{TABS_ID}" role="tabpanel">      
							{TABS_CONTENT}
						</div>
                    <!-- END: tabs_content -->
					</div>
				</div>
				</div>
            </div>
            <!-- END: tabs -->
            <div class="sidebar relative left-content col-md-6">
                <!-- BEGIN: other -->
                <aside class="visible-lg">
                    <div class="block_default">
                        <h2>{LANG.detail_others}</h2>
                        <div class="aside-content mini-products-list">
                            <div class="list-bestsell">
                                <!-- BEGIN: loop -->
                                <div class="list-bestsell-item">
                                    <div class="thumbnail-container clearfix">
                                        <div class="product-image">
                                            <a href="{OTHER.link_pro}" title="{OTHER.title}"><img class="img-responsive" src="{OTHER.homeimgthumb}" alt="{OTHER.title}" />
                                            </a>
                                        </div>
                                        <div class="product-meta">
                                            <h3><a href="{OTHER.link_pro}" title="{OTHER.title}">{OTHER.title}</a></h3>
                                            <!-- BEGIN: price -->
                                            <!-- BEGIN: no_discounts -->
                                            <div class="product-price-and-shipping">
                                                <span class="price">{PRICEOTHER.price_format}&nbsp;{PRICEOTHER.unit}</span>
                                            </div>
                                            <!-- END: no_discounts -->
                                            <!-- BEGIN: discounts -->
                                            <div class="product-price-and-shipping">
                                                <span class="price">{PRICEOTHER.sale_format}&nbsp;{PRICEOTHER.unit}</span>
                                            </div>
                                            <div class="product-price-and-shipping">
                                                <span class="price">{PRICEOTHER.price_format}&nbsp;{PRICEOTHER.unit}</span>
                                            </div>
                                            <!-- END: discounts -->
                                            <!-- END: price -->
                                            <!-- BEGIN: contact -->
                                            <div class="product-price-and-shipping">
                                                <span class="price">{LANG.price_contact}</span>
                                            </div>
                                            <!-- END: contact -->
                                            <!-- BEGIN: review -->
                                            <div class="clearfix">
                                                {review_star}
                                            </div>
                                            <div class="clear"></div>
                                            <!-- END: review -->
                                        </div>
                                    </div>
                                </div>
                                <!-- END: loop -->
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </aside>
                <!-- END: other -->
            </div>
            <!-- END: product_detail -->
        </div>
    </div>
</div>
<div class="modal fade" id="idmodals" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                &nbsp;
            </div>
            <div class="modal-body">
                <p class="text-center"><em class="fa fa-spinner fa-spin fa-3x">&nbsp;</em></p>
            </div>
        </div>
    </div>
</div>

<div class="msgshow" id="msgshow"></div>

<!-- BEGIN: allowed_print_js -->
<script type="text/javascript" data-show="after">
    $(function () {
        $('#click_print').click(function (event) {
            var href = $(this).attr("href");
            event.preventDefault();
            nv_open_browse(href, '', 640, 500, 'resizable=no,scrollbars=yes,toolbar=no,location=no,status=no');
            return false;
        });
    });
</script>
<!-- END: allowed_print_js -->

<!-- BEGIN: imagemodal -->
<script type="text/javascript" data-show="after">
    $('.open_modal').click(function (e) {
        e.preventDefault();
        $('#idmodals .modal-body').html('<img src="' + $(this).data('src') + '" alt="" class="img-responsive" />');
        $('#idmodals').modal('show');
    });
</script>
<!-- END: imagemodal -->

<!-- BEGIN: order_number_limit -->
<script type="text/javascript" data-show="after">
    $('#pnum').attr('max', '{PRODUCT_NUMBER}');
    $('#pnum').change(function () {
        if (intval($(this).val()) > intval($(this).attr('max'))) {
            alert('{LANG.detail_error_number} ' + $(this).attr('max'));
            $(this).val($(this).attr('max'));
        }
    });
</script>
<!-- END: order_number_limit -->

<script type="text/javascript">
    var detail_error_group = '{LANG.detail_error_group}';

    function check_quantity(_this) {
        $('input[name="' + _this.attr('name') + '"]').parent().css('border-color', '#ccc');
        if (_this.is(':checked')) {
            _this.parent().css('border-color', 'blue');
        }
        $('#group_error').css('display', 'none');
        <!-- BEGIN: check_price -->
            check_price('{proid}', '{pro_unit}');
        <!-- END: check_price -->
    }
</script>

<!-- END: main -->