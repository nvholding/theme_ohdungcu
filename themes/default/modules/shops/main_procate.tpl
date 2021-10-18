<!-- BEGIN: main -->
<div id="category" class="section-collection">
	<!-- BEGIN: catalogs -->
    <div class="section_product" id="{ALIAS_CATALOG}">
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
                <div class="hidden-md hidden-sm hidden-xs clearfix">
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
                  
                </div>
                <div class="col-md-24" style="padding-right:5px">
                     <div class="right-bestsell">
                        [CATALOG_BLOCK_{STT_CATALOG}]
                    </div>
                    <div class="group-list-product clearfix" style="padding-top:0;border:none">
                        <!-- BEGIN: items -->
                        <div class="col-md-{num} col-sm-6 col-xs-12">
                            
                       <!-- BEGIN: new -->
		            	<span class="label label-success newday">{LANG.newday}</span>
		            	<!-- END: new -->
		            	
		            	<!-- BEGIN: point -->
		            	<span class="label label-info" title="{point_note}">+{point}</span>
		            	<!-- END: point -->
		            	<!-- BEGIN: gift -->
		            	<span class="label label-success">+<em class="fa fa-gift fa-lg">&nbsp;</em></span>
		            	<!-- END: gift -->
						
						<!-- BEGIN: gift_info -->
		            	<img class="gift_image" src="{IMG_SRC_GIFT}">
		            	<!-- END: gift_info -->
						
						<!-- BEGIN: mydiscount -->
		            	<img class="discount_image" src="{IMG_SRC_DISCOUNT}">
		            	<!-- END: mydiscount -->
                            
                            <!-- BEGIN: discounts -->
                            <div class="sale-flash"><b>-</b> {PRICE.discount_percent}{PRICE.discount_unit}</div>
                            <!-- END: discounts -->
                            <div class="product-box">
                                <div class="product-thumbnail">
                                    <a href="{LINK}" title="{TITLE}"><img class="bethua image" src="{IMG_SRC}" alt="{TITLE}">
                                    </a>
                                    <div class="button-link">
                                        <div class="btn-button add-to-cart action">
                                            <!-- BEGIN: order -->
                                            <form class="dathang variants form-nut-grid has-validation-callback hidden-mobile">
                                                <a class="btn-addToCart grl btn_df add_to_cart" href="javascript:void(0)" id="{ID}" title="{TITLE}" onclick="cartorder(this, {GROUP_REQUIE}, '{LINK}')">
                                                    <span class="buy">{LANG.add_product}</span>
                                                    <button type="button" class="hidden"></button>
                                                </a>
                                            </form>
                                            <!-- END: order -->
                                            <form class="chitiet variants form-nut-grid has-validation-callback hidden-desktop">
                                                <a class="btn-addToCart grl btn_df" href="{LINK}" title="{LANG.detail_product}">
                                                    <span class="detail" style="padding-left:3px">{LANG.detail_product}</span>
                                                </a>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-info a-left">
                                    <h3 class="product-name"><a href="{LINK}" title="{TITLE}">{TITLE}</a></h3>
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
                        </div>
                        <!-- END: items -->
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
