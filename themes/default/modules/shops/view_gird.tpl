<!-- BEGIN: main -->
<div id="category" class="products-view-grid">
    <div class="col-xs-24 hidden-print"><h1 class="title-head">{CAT_NAME}</h1></div>
    <div class="clear"></div>
    <!-- BEGIN: displays -->
    <div class="form-group form-inline margin-top-lg">
        <div class="fr">
            <label class="control-label">{LANG.displays_product}</label>
            <select name="sort" id="sort" class="form-control input-sm" onchange="nv_chang_price();">
                <!-- BEGIN: sorts -->
                    <option value="{key}" {se}> {value}</option>
                <!-- END: sorts -->
            </select>
        </div>
        <div class="fl">
            <div id="viewtype" >
                <!-- BEGIN: viewtype -->
    				<a href="javascript:void(0)" class="btn button-view-mode{VIEWTYPE.selected}" onclick="nv_chang_viewtype('{VIEWTYPE.key}');"><i class="{VIEWTYPE.value}"></i></a>
                <!-- END: viewtype -->
            </div>
        </div>
    </div>
    <div class="clear">&nbsp;</div>
    <!-- END: displays -->

	<!-- BEGIN: grid_rows -->
    <div class="col-md-{num} col-sm-8 col-xs-12 grid_rows">
        <div class="product-box">
            <div class="product-thumbnail">
                <a href="{link_pro}" title="{title_pro}"><img class="bethua" src="{img_pro}" alt="{title_pro}">
                </a>
                <div class="button-link">
                    <div class="btn-button add-to-cart action">
                        <!-- BEGIN: order -->
                        <form class="variants form-nut-grid has-validation-callback hidden-mobile">
                            <a class="btn-addToCart grl btn_df add_to_cart" href="javascript:void(0)" id="{ID}" title="{title_pro}" onclick="cartorder(this, {GROUP_REQUIE}, '{link_pro}')">
                                <i class="fa fa-shopping-basket" aria-hidden="true"></i>
                                <span class="hidden-xs hidden-sm hidden-md">{LANG.add_product}</span>
                                <button type="button" class="hidden"></button>
                            </a>
                        </form>
                        <!-- END: order -->
                        <form class="variants form-nut-grid has-validation-callback hidden-desktop">
                            <a class="btn-addToCart grl btn_df" href="{link_pro}" title="{LANG.detail_product}">
                                <i class="fa fa-link" aria-hidden="true"></i>
                                <span class="hidden-xs hidden-sm hidden-md">{LANG.detail_product}</span>
                            </a>
                        </form>
                    </div>
                    <!-- BEGIN: wishlist -->
                    <div class="product-addto-links">
                        <a class="btn_df btnProduct iWishAdd iwishAddWrapper " href="javascript:void(0)" title="{LANG.title_wishlist}" onclick="wishlist({ID}, this)">
                            <i class="fa fa-heart" aria-hidden="true"></i>
                            <span class="hidden-xs hidden-sm hidden-md">{LANG.title_wishlist}</span>
                        </a>
                    </div>
                    <!-- END: wishlist -->
                </div>
            </div>
            <div class="product-info a-left">
                <h3 class="product-name"><a href="{link_pro}" title="{title_pro}">{title_pro}</a></h3>
                <!-- BEGIN: price -->
                <div class="price-box clearfix">
                    <!-- BEGIN: no_discounts -->
                    <div class="special-price f-left">
                        <span class="price product-price">{PRICE.price_format}{PRICE.unit}</span>
                    </div>
                    <!-- END: no_discounts -->
                    <!-- BEGIN: discounts -->
                    <div class="special-price fl">
                        <span class="price product-price">{PRICE.sale_format}{PRICE.unit}</span>
                    </div>
                    <div class="old-price fr">
                        <span class="price product-price-old">{PRICE.price_format}</span>
                    </div>
                    <!-- END: discounts -->
                </div>
                <!-- END: price -->
                <!-- BEGIN: contact -->
                <div class="price-box clearfix">
                    <div class="special-price f-left">
                        <span class="price product-price">{LANG.price_contact}</span>
                    </div>
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
	<!-- END: grid_rows -->
	<div class="clearfix">
	</div>
	<div class="text-center hidden-print">
		{pages}
	</div>
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

<div class="msgshow" id="msgshow">
</div>
<!-- END: main -->
