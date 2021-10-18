	<noscript>
		<div class="alert alert-danger">{LANG.nojs}</div>
	</noscript>
	<div class="mobile-menu-bg"></div>
    <div class="mobile-menu-wrap">
        <div class="logo">
            <!-- BEGIN: image1 -->
            <a title="{SITE_NAME}" href="{THEME_SITE_HREF}"><img src="{LOGO_SRC}" alt="{SITE_NAME}" /></a>
            <!-- END: image1 -->
        </div>
        <div class="menu">
            [MENU_SITE_MOBILE]
        </div>
        <div class="mfooter">
            [FOOTER_SITE_MOBILE]
        </div>
    </div>
	
	
    <div class="body-bg">
	<div class="wraper">
		<header>
				<div class="main-header" id="header">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-xs-16 logo">
								<!-- BEGIN: image -->
									<a title="{SITE_NAME}" href="{THEME_SITE_HREF}"><img src="{LOGO_SRC}" width="{LOGO_WIDTH}" height="{LOGO_HEIGHT}" alt="{SITE_NAME}" /></a>
									<!-- END: image -->
							</div>
							<div class="col-md-18 col-xs-8">
								<div class="col-md-18 policy-header hidden-sm hidden-xs">
									[HEAD_RIGHT]
								</div>
								<div class="col-md-6 col-xs-24 cart-header">
									[CART]
								</div>
							</div>
							
						</div>
					</div>
				</div>
		</header>
		</div>
		<nav class="second-nav main-menu" id="menusite">
		        <div class="mobile-menu-toggle-btn">
                    <i class="fa fa-bars" aria-hidden="true"></i>
                </div>
			<div class="wraper">
			<div class="container">
				<div class="row">
				    <div class="col-md-6 catagory">
						[DANH_MUC]
                    </div>
                    <div class="col-md-12 box-shadow">
						[MENU_SITE]
                    </div>
					<div class="col-md-6 headerSearch">
						  <div class="input-group">
							 <input type="text" class="form-control" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}..."><span class="input-group-btn"><button type="button" class="btn btn-info" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y"><em class="fa fa-search fa-lg"></em></button></span>
						  </div>
					</div>
				</div>
			</div>
			</div>
		</nav>
		
    
		<div class="topbar headnav hidden-xs">
			<div class="wraper">	
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-xs-10 topbar-left">
					<span class="hidden-xs"> 
						[SOCIAL_ICONS] 
					</span>
					<a class="visible-xs" href="tel:0973458959"><i class="fa fa-phone" aria-hidden="true"></i> 0973458959</a>
				</div>
				<div class="col-sm-12 col-xs-14 topbar-right">
					
					  [PERSONALAREA]
						
				</div>
			</div>
		</div>
		</div>
	</div>
	
		<div class="wraper">	
       
		<section>
			<div class="container" id="body">
                <nav class="third-nav">
    				<div class="row">
                        <div class="bg">
                        <div class="clearfix">
                            <div class="col-xs-24 col-sm-18 col-md-18">
                                <!-- BEGIN: breadcrumbs -->
                                <div class="breadcrumbs-wrap">
                                	<div class="display">
                                		<a class="show-subs-breadcrumbs hidden" href="#" onclick="showSubBreadcrumbs(this, event);"><em class="fa fa-lg fa-angle-right"></em></a>
		                                <ul class="breadcrumbs list-none"></ul>
									</div>
									<ul class="subs-breadcrumbs"></ul>
	                                <ul class="temp-breadcrumbs hidden">
	                                    <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{THEME_SITE_HREF}" itemprop="url" title="{LANG.Home}"><span itemprop="title">{LANG.Home}</span></a></li>
	                                    <!-- BEGIN: loop --><li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{BREADCRUMBS.link}" itemprop="url" title="{BREADCRUMBS.title}"><span class="txt" itemprop="title">{BREADCRUMBS.title}</span></a></li><!-- END: loop -->
	                                </ul>
								</div>
                                <!-- END: breadcrumbs -->
                            </div>
                           
                        </div>
                        </div>
                    </div>
                </nav>
                [THEME_ERROR_INFO]
