<!-- BEGIN: main -->
<div class="top-cart-contain f-right">
	<div class="mini-cart text-xs-center">
	<!-- BEGIN: enable -->
	<a href="{LINK_VIEW}" title="{LANG.cart_title}" class="cart-link" data-toggle="tip" data-target="#cart_product" data-click="y">
	    <img src="//bizweb.dktcdn.net/100/366/480/themes/736376/assets/icon-cart.png?1581935018801" alt="Giỏ hàng">
		<i class="cartCount count_item_pr"></i>
		<span class="hidden-xs">{LANG.cart_title}</span>
		<span class="cart-products-count">{num}</span>
	</a>
    <div id="cart-sidebar cart_product" class="top-cart-content hidden">
	         <ul id="cart-sidebar" class="mini-products-list count_li">
							<li class="list-item">
								<ul></ul>
							</li>
							<li class="action">
								<ul>
									<li class="li-fix-1">
									<!-- BEGIN: price -->
										<div class="top-subtotal">
											{LANG.cart_product_total}:
											<span class="money">{total}</span> {money_unit}
										</div>
									<!-- END: price -->
									</li>
								</ul>
							</li>
						</ul>
		</div>
	</div>
</div>
<!-- END: main -->