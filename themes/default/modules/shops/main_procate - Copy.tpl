<!-- BEGIN: main -->
<div id="category" class="section-collection">
	<!-- BEGIN: catalogs -->
    <div class="section_product">
        <div>
            <div class="row">
                <div class="col-md-24 group-top-product">
                    <h2 class="section_product_title"><a href="{LINK_CATALOG}" title="{TITLE_CATALOG}">{TITLE_CATALOG}</a></h2>
                    <div class="menu-button-edit pointer">
                        <i class="fa fa-navicon" aria-hidden="true"></i>
                    </div>
                    <ul>
                        <!-- BEGIN: subcatloop -->
                        <li><a href="{SUBCAT.link}">{SUBCAT.title}</a></li>
                        <!-- END: subcatloop -->
                        <li><a class="viewmoretext margin-bottom" href="{LINK_CATALOG}" title="{TITLE_CATALOG}">{LANG.view_all_title}</a></li>
                    </ul>
                </div>
            </div>
            <div class="row grp-nature">
                <div class="col-md-18" style="padding-right:5px">
                    <!-- BEGIN: imagecat -->
                    <div class="banner" style="margin-bottom: 5px;position:relative">
                        <div class="pointer draw_line">
                            <div class="btn-1"><span></span>
                            </div>
                            <div class="shine"></div>
                        </div>
                        <a href="{LINK_CATALOG}" title="{TITLE_CATALOG}">
                            <img src="{IMAGES_CATALOG}" alt="{TITLE_CATALOG}" class="img-responsive center-block"/>
                        </a>
                    </div>
                    <!-- END: imagecat -->
                    <div class="group-list-product clearfix" style="padding-top:0;border:none">
                        <!-- BEGIN: items -->
                        <div class="col-md-{num} col-sm-6 col-xs-12">
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
                                </div>
                            </div>
                        </div>
                        <!-- END: items -->
                    </div>
                </div>
                <div class="col-md-6 col-md-3-right clearfix">
                    <div class="right-bestsell">
                        [CATALOG_BLOCK_{STT_CATALOG}]
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- END: catalogs -->
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

<div class="msgshow" id="msgshow">&nbsp;</div>
<!-- END: main -->
