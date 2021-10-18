<!-- BEGIN: tree -->
<li class="col-lg-12 col-md-12 col-xs-24 link-list">
	<!-- BEGIN: icon -->
	<img src="{MENUTREE.icon}" />&nbsp;
	<!-- END: icon -->
	<a title="{MENUTREE.note}" href="{MENUTREE.link}" {MENUTREE.target}>{MENUTREE.title_trim}</a>
	<!-- BEGIN: tree_content -->
	<ul >
		{TREE_CONTENT}
	</ul>
	<!-- END: tree_content -->
</li>
<!-- END: tree -->
<!-- BEGIN: main -->
<link rel="stylesheet" type="text/css" media="screen" href="{NV_BASE_SITEURL}themes/{BLOCK_THEME}/css/webslidemenu.css" />
<script	type="text/javascript" src="{NV_BASE_SITEURL}themes/{BLOCK_THEME}/js/webslidemenu.js"></script>
<div class="wsmain hidden-xs hidden-sm">
<nav class="wsmenu clearfix">
<ul class="mobile-sub wsmenu-list">
	<li>
		<a title="{LANG.Home}" href="{THEME_SITE_HREF}"><span class="hidden-sm"> {LANG.Home} </span></a>
	</li>
	<!-- BEGIN: loopcat1 -->
	<li {CAT1.class}>
		<!-- BEGIN: icon -->
           <img src="{CAT1.icon}" />&nbsp;
        <!-- END: icon -->
		    <a title="{CAT1.note}" href="{CAT1.link}" {CAT1.target}>{CAT1.title_trim}
		   	   <!-- BEGIN: expand -->
				   <i class="fa fa-caret-down"></i>
			   <!-- END: expand -->
		 <!-- BEGIN: cat2 -->
		      <div class="megamenu clearfix">
			      <ul>
				    {HTML_CONTENT}
			      </ul>
		      </div>
		 <!-- END: cat2 -->
	</li>
	<!-- END: loopcat1 -->
</ul>
</nav>
</div>

<!-- END: main -->