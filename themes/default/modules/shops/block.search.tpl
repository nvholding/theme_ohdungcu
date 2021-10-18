<!-- BEGIN: main -->
<div class="header_search">
    <form class="input-group search-bar" id="search_form_shops" action="{NV_BASE_SITEURL}" method="get" role="search" onsubmit="return onsubmitsearch('{MODULE_NAME}');">
		<div class="collection-selector">
			<div class="search_text">{LANG.catagories}</div>
			<div id="search_info" class="list_search" style="display: none;">
                <!-- BEGIN: loopcata -->
				<div class="search_item" data-coll-id="{ROW.catid}">{ROW.xtitle}</div>
				<!-- END: loopcata -->
				<div class="liner_search"></div>
				<div class="search_item active" data-coll-id="0">{LANG.catagories}</div>
			</div>
		</div>
		<input type="search" id="keyword" name="keyword" value="" placeholder="{LANG.product_keywords}..." class="input-group-field st-default-search-input search-text" autocomplete="off"/>
		
        <input name="cata" id="cata" value="0" type="hidden" />
        <span class="input-group-btn">
			<button class="btn icon-fallback-text" onclick="onsubmitsearch('{MODULE_NAME}')"><em class="fa fa-search fa-lg" style="color:#ad1c05"></em></button> <!--{LANG.search}-->
		</span>
	</form>
</div>
<!-- END: main -->