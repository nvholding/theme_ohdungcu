<!-- BEGIN: main -->
<div id="products" class="clearfix products-view-grid">
    <!-- BEGIN: displays -->
    <div class="form-group form-inline pull-right">
        <label class="control-label">{LANG.displays_product}</label>
        <select name="sort" id="sort" class="form-control input-sm" onchange="nv_chang_price();">
            <!-- BEGIN: sorts -->
                <option value="{key}" {se}> {value}</option>
            <!-- END: sorts -->
        </select>
    </div>
    <div class="clearfix">&nbsp;</div>
    <!-- END: displays -->

    <!-- BEGIN: items -->
    <div class="col-xs-12 col-sm-12 col-md-{num}">
        <div class="product-box">
            <div class="product-thumbnail">
                <!-- BEGIN: discounts -->
                <div class="sale-flash"><b>-</b> {PRICE.discount_percent}{PRICE.discount_unit}</div>
                <!-- END: discounts -->
                <!-- BEGIN: new -->
                <div class="new-flash">{LANG.newday}</div>
                <!-- END: new -->
                <a href="{LINK}" title="{TITLE}">
                    <img src="{IMG_SRC}" alt="{TITLE}" class="bethua" style="padding-top: 28.5px;"/>
                </a>
                <div class="variants pro-action-btn form-nut-grid">
                    <div>
                    <!-- BEGIN: order -->
                    <a href="javascript:void(0)" id="{ID}" title="{TITLE}" onclick="cartorder(this, {GROUP_REQUIE}, '{LINK}')">
                        <button type="button" class="btn-buy btn-cart btn btn-style">{LANG.add_product}</button>
                    </a>
                    <!-- END: order -->

					<!-- BEGIN: product_empty -->
                    <button class="btn-buy btn-cart btn btn-style">{LANG.product_empty}</button>
                    <!-- END: product_empty -->
                    <a href="{LINK}" title="{TITLE}" >
                        <button type="button" class="btn-buy btn-cart btn btn-style">{LANG.detail_product}</button>
                    </a>
                    <!-- BEGIN: wishlist -->
                    <a href="javascript:void(0)" title="{TITLE}" >
                        <button type="button" onclick="wishlist({ID}, this)" class="btn-buy btn-cart btn btn-style <!-- BEGIN: disabled -->disabled<!-- END: disabled -->">{LANG.wishlist}</button>
                    </a>
                    <!-- END: wishlist -->
                    </div>
                </div>
            </div>
            <div class="product-info">
                <h3 class="product-name"><a href="{LINK}" title="{TITLE}">{TITLE}</a></h3>
                <!-- BEGIN: price -->
                    <!-- BEGIN: no_discounts -->
                    <div class="product-price">{PRICE.price_format}{PRICE.unit}</div>
                    <!-- END: no_discounts -->
                    <!-- BEGIN: discounts -->
                    <div class="product-price">{PRICE.sale_format}{PRICE.unit}</div>
                    <div class="product-price-old">	{PRICE.price_format}{PRICE.unit}</div>
                    <!-- END: discounts -->
                <!-- END: price -->
                <!-- BEGIN: contact -->
                <div class="product-price">{LANG.price_contact}</div>
                <!-- END: contact -->
                <!-- BEGIN: product_code -->
                <div class="product_code">{PRODUCT_CODE}</div>
                <!-- END: product_code -->
            </div>
        </div>
    </div>
    <!-- END: items -->
</div>

<!-- BEGIN: modal_loaded -->
<div class="modal fade" id="idmodals" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">{LANG.add_product}</h4>
			</div>
			<div class="modal-body">
				<em class="fa fa-spinner fa-spin">&nbsp;</em>
			</div>
		</div>
	</div>
</div>
<!-- END: modal_loaded -->

<!-- BEGIN: pages -->
<div class="text-center">
    {generate_page}
</div>
<!-- END: pages -->
<div class="msgshow" id="msgshow">&nbsp;</div>

<!-- END: main -->
