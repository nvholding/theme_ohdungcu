<!-- BEGIN: tree -->
<li>
	<a title="{MENUTREE.note}" href="{MENUTREE.link}" class="sf-with-ul"{MENUTREE.target}>{MENUTREE.title_trim}</a>
	<!-- BEGIN: tree_content -->
	
	<ul>
		{TREE_CONTENT}
	</ul>
	<!-- END: tree_content -->
</li>
<!-- END: tree -->
<!-- BEGIN: main -->

<div class="menu-cate hidden-sm hidden-xs">
		<span class="title">
				<i class="fa fa-bars"></i> Danh mục sản phẩm
		</span>
		<ul  class="lv0" id="menu_{MENUID}">
			<!-- BEGIN: loopcat1 -->
			<li>
				<a title="{CAT1.note}" href="{CAT1.link}"{CAT1.target}>{CAT1.title_trim}</a>
				<!-- BEGIN: expand -->
				<i class="fa fa-angle-right"></i>
					<!-- END: expand -->
				<!-- BEGIN: cat2 -->
					<ul class="lv1">
						{HTML_CONTENT}					
					</ul>
					<!-- END: cat2 -->
				</li>
				<!-- END: loopcat1 -->
			</ul>
</div>

<!-- END: main -->