<!-- BEGIN: main -->
<div class="list-bestsell">
    <!-- BEGIN: loop -->
    <div class="list-bestsell-item">
        <div class="thumbnail-container clearfix">
            <div class="product-image">
                <a href="{link}" title="{title}"><img class="img-responsive" src="{src_img}" alt="{title}"/>
                </a>
            </div>
            <div class="product-meta">
                <h3><a href="{link}" title="{title}">{title}</a></h3>
                <!-- BEGIN: price -->
                    <!-- BEGIN: no_discounts -->
                    <div class="product-price-and-shipping">
                        <span class="price">{PRICE.price_format}{PRICE.unit}</span>
                    </div>
                    <!-- END: no_discounts -->
                    <!-- BEGIN: discounts -->
                    <div class="product-price-and-shipping">
                        <span class="price">{PRICE.sale_format}{PRICE.unit}</span>
                    </div>
                    <div class="product-price-and-shipping">
                        <span class="product-price-old">{PRICE.price_format}</span>
                    </div>
                    <!-- END: discounts -->
                <!-- END: price -->
                <!-- BEGIN: contact -->
                <div class="product-price-and-shipping">
                    <span class="price">{LANG.price_contact}</span>
                </div>
                <!-- END: contact -->
            </div>
        </div>
    </div>
    <!-- END: loop -->
    <div class="clear"></div>
</div>
<!-- END: main -->