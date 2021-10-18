<!-- BEGIN: main  -->
<link href='{NV_BASE_SITEURL}themes/default/css/owl.carousel.min.css' rel='stylesheet' type='text/css' />
    <script src='{NV_BASE_SITEURL}themes/default/js/owl.carousel.min.js' type='text/javascript'></script>
<div class="section section-category">  
    <div class="owl-carousel">
        <!-- BEGIN: loop -->
        <!-- BEGIN: type_image_link -->
            <div class="carousel-item">
                <a href="{DATA.link}">
                    <img src="{DATA.file_image}" alt="{DATA.file_alt}"/>
                </a>
            </div>
            <!-- END: type_image_link -->
            <!-- BEGIN: type_image -->
            <div class="carousel-item">
                <img src="{DATA.file_image}" alt="{DATA.file_alt}"/>
            </div>
            <!-- END: type_image -->
        <!-- END: loop -->
    </div>
</div>
<script>
    $('.section-category').owlCarousel({
    loop:true,
    margin:10,
    autoplay:false,
    responsiveClass:true,
    responsive:{
        0:{
            items:1,
            nav:true
        },
        600:{
            items:1,
            nav:true
        },
        1000:{
            items:1,
            nav:true,
            loop:false
        }
    }
});
</script>
<!-- END: main -->