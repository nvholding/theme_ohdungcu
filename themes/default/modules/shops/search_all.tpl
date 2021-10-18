<!-- BEGIN: form -->
<div id="formsearch" class="hidden">
	<form action="{NV_BASE_SITEURL}" method="get" name="frm_search" onsubmit="return onsubmitsearch1();">
		<div class="well">
			<div class="row">
				<div class="col-xs-12">
					<div class="form-group">
						<label>{LANG.keyword}</label>
						<input id="keyword1" type="text" value="{value_keyword}" name="keyword" class="form-control">
					</div>
				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<label>{LANG.product_catalogs}</label>
						<select name="cata" id="cata1" class="form-control">
							<option value="0">{LANG.allcatagories}</option>
							<!-- BEGIN: loopcata -->
							<option {ROW.selected} value="{ROW.catid}">{ROW.xtitle}</option>
							<!-- END: loopcata -->
						</select>
					</div>
				</div>
				<div class="col-xs-24">
					<div class="form-group text-center">
						<input type="submit" class="btn btn-primary" name="submit" id="submit" value="{LANG.search}" onclick="onsubmitsearch1()">
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
<!-- END: form -->
<!-- BEGIN: main -->
<div id="products" class="products-view-grid">
	<!-- BEGIN: items -->
    <div class="col-md-{num} col-sm-6 col-xs-12 grid_rows">
        <!-- BEGIN: discounts -->
        <div class="sale-flash"><b>-</b> {PRICE.discount_percent}{PRICE.discount_unit}</div>
        <!-- END: discounts -->
        <div class="product-box">
            <div class="product-thumbnail">
                <a href="{LINK}" title="{TITLE}"><img class="bethua" src="{IMG_SRC}" alt="{TITLE}">
                </a>
                <div class="button-link">
                    <div class="btn-button add-to-cart action">
                        <!-- BEGIN: order -->
                        <form class="variants form-nut-grid has-validation-callback hidden-mobile">
                            <a class="btn-addToCart grl btn_df add_to_cart" href="javascript:void(0)" id="{ID}" title="{TITLE}" onclick="cartorder(this, {GROUP_REQUIE}, '{LINK}')">
                                <i class="fa fa-shopping-basket" aria-hidden="true"></i>
                                <span class="hidden-xs hidden-sm hidden-md">{LANG.add_product}</span>
                                <button type="button" class="hidden"></button>
                            </a>
                        </form>
                        <!-- END: order -->
                        <form class="variants form-nut-grid has-validation-callback hidden-desktop">
                            <a class="btn-addToCart grl btn_df" href="{LINK}" title="{LANG.detail_product}">
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
                <h3 class="product-name"><a href="{LINK}" title="{TITLE}">{TITLE}</a></h3>
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
                        <span class="price product-price-old">{PRICE.sale_format}</span>
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
	<!-- END: items -->
</div>
<div class="clear">
	&nbsp;
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

<div class="msgshow" id="msgshow"></div>

<!-- BEGIN: tooltip_js -->
<script type="text/javascript" data-show="after">
	$(document).ready(function() {
		$("[data-rel='tooltip']").tooltip({
			placement : "bottom",
			html : true,
			title : function() {
				return '<p class="text-justify">' + $(this).data('content') + '</p><div class="clearfix"></div>';
			}
		});
	});
</script>
<!-- END: tooltip_js -->
<!-- END: main -->