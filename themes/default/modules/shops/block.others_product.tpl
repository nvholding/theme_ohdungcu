<!-- BEGIN: main -->
<link href='{NV_BASE_SITEURL}themes/{BLOCK_THEME}/css/owl.carousel.min.css' rel='stylesheet' type='text/css' />
<script src='{NV_BASE_SITEURL}themes/{BLOCK_THEME}/js/owl.carousel.min.js' type='text/javascript'></script>
<div class="owl-carousel list-bestsell">
    <!-- BEGIN: loop -->
    <div class="list-bestsell-item">
            <div class="item product-image overlay-item">
			<!-- BEGIN: gift_info -->
		            	<img class="gift_image" src="{IMG_SRC_GIFT}">
		            	<!-- END: gift_info -->

						<!-- BEGIN: mydiscount -->
		            	<img class="discount_image" src="{IMG_SRC_DISCOUNT}">
		            	<!-- END: mydiscount -->

                <a href="{link}" title="{title}"><img  src="{src_img}" alt="{title}"/>
                <div class="overlay">
				  <h3>XEM NGAY</h3>
				</div>
                 </a>
            </div>
            <div class="clear"></div>
            <div class="product-meta">
                <h3><a href="{link}" title="{title}">{title}</a></h3>
                <!-- BEGIN: price -->
                    <!-- BEGIN: no_discounts -->
                    <div class="product-price-and-shipping" style="display: block;color: #ad1c05;font-weight: bold;margin: 5px 0;float: left;font-size: 16px;">
                        <span class="price">{PRICE.price_format}&nbsp;{PRICE.unit}</span>
                    </div>
                    <!-- END: no_discounts -->
                    <!-- BEGIN: discounts -->
                    <div class="product-price-and-shipping" style="display: block;color: #ad1c05;font-weight: bold;margin: 5px 0;float: left;font-size: 16px;">
                        <span class="price">{PRICE.sale_format}&nbsp;{PRICE.unit}&emsp;</span>
                    </div>
                    <div class="product-price-and-shipping" style="display:inline">
                        <span class="product-price-old">{PRICE.price_format}&nbsp;{PRICE.unit}</span>
                    </div>
                    <!-- END: discounts -->
                <!-- END: price -->
                <!-- BEGIN: contact -->
                <div class="product-price-and-shipping">
                    <span class="price">{LANG.price_contact}</span>
                </div>
                <!-- END: contact -->
                <!-- BEGIN: review -->
                <div class="fr">
                    {review_star}
        		</div>
                <!-- END: review -->
          
        </div>
    </div>
    <!-- END: loop -->
</div>
<script>
    $('.list-bestsell').owlCarousel({
    loop:true,
    margin:10,
    autoplay:false,
    responsiveClass:true,
    responsive:{
        0:{
            items:2,
            nav:true
        },
        600:{
            items:3,
            nav:true
        },
        1000:{
            items:4,
            nav:true,
            loop:false
        }
    }
});
</script>
<!-- END: main -->