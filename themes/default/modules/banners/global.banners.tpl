<!-- BEGIN: main  -->
    <link href='{NV_BASE_SITEURL}themes/default/css/owl.carousel.min.css' rel='stylesheet' type='text/css' />
    <script src='{NV_BASE_SITEURL}themes/default/js/owl.carousel.min.js' type='text/javascript'></script>
<div class="banner-slider owl-carousel">
<!-- BEGIN: loop -->
<div class="items nv-block-banners"> 
    <!-- BEGIN: type_image -->
		<img alt="{DATA.file_alt}" src="{DATA.file_image}" />
    <!-- END: type_image -->
    <!-- BEGIN: bannerhtml -->
		<div class="clearfix text-left">
			{DATA.bannerhtml}
		</div>
    <!-- END: bannerhtml -->
</div>
<!-- END: loop -->
</div>
<script>
$('.banner-slider').owlCarousel({
    autoplay: true,
	loop:true,
    margin:10,
    nav:true,
	dot:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:1
        }
    }
})
</script>
<!-- END: main -->