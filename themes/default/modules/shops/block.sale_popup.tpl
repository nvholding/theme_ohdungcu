<!-- BEGIN: main -->
<script type="text/javascript">
	$(document).ready(function ($) {
		if ($(window).width() >= 768){
			SalesPop();
		}
	});
	function fisherYates ( myArray ) {
		var i = myArray.length, j, temp;
		if ( i === 0 ) return false;
		while ( --i ) {
			j = Math.floor( Math.random() * ( i + 1 ) );
			temp = myArray[i];
			myArray[i] = myArray[j]; 
			myArray[j] = temp;
		}
	}
	var collection = new Array();
    <!-- BEGIN: loop -->
		collection[{STT}]="<a href='{link}' title='{title}' class='jas-sale-pop-img mr__20'>"
	+ "<img src='{src_img}' alt='{title}'/>"
	+ "</a>"
	+ "<div class='jas-sale-pop-content'>"
	+ "<h3 class='mg__0 mt__5 mb__5 fs__18'>"
	+ "<a href='{link}' title='{title}'>{title}</a>"
	+ "</h3>"
	+ "<span class='fs__12 jas-sale-pop-timeago'></span>"
	+ "</div>"
	+ "<span class='pe-7s-close pa fs__20'></span>";
	<!-- END: loop -->
	fisherYates(collection);
	function SalesPop() {
		if ($('.jas-sale-pop').length < 0)
			return;
		setInterval(function() {
			$('.jas-sale-pop').fadeIn(function() {
				$(this).removeClass('slideUp');
			}).delay(10000).fadeIn(function() {
				var randomTime =['1 phút','2 phút','3 phút','4 phút','5 phút','6 phút','7 phút','8 phút','9 phút','10 phút','11 phút','12 phút','13 phút','14 phút','15 phút','16 phút','17 phút','18 phút','19 phút','20 phút','21 phút','22 phút','23 phút','24 phút','25 phút','26 phút','27 phút','28 phút','29 phút','30 phút','31 phút','32 phút','33 phút','34 phút','35 phút','36 phút','37 phút','38 phút','39 phút','40 phút','41 phút','42 phút','43 phút','44 phút','45 phút','46 phút','47 phút','48 phút','49 phút','50 phút','51 phút','52 phút','53 phút','54 phút','55 phút','56 phút','57 phút','58 phút','59 phút',],
				randomTimeAgo = Math.floor(Math.random() * randomTime.length),
				randomProduct = Math.floor(Math.random() * collection.length),
				randomShowP = collection[randomProduct],
				TimeAgo = randomTime[randomTimeAgo];
				$(".jas-sale-pop").html(randomShowP);
				$('.jas-sale-pop-timeago').text('Một khách hàng vừa đặt mua cách đây ' + TimeAgo);
				$(this).addClass('slideUp');
				$('.pe-7s-close').on('click', function() {
					$('.jas-sale-pop').remove();
				});
			}).delay(6000);
		}, 6000);
	}
</script>
<div class="jas-sale-pop flex pf middle-xs"></div>
<style type="text/css">
.jas-sale-pop {
  background:#fff;
  bottom:-100%;
  left:20px;
  top:auto !important;
  right:auto;
  padding:10px 30px 10px 10px;
  box-shadow:0 0 20px rgba(0,0,0,0.3);
  border-radius:3px;
  opacity:0;
  visibility:hidden;
  transition:all 2s;
  z-index:100;
  position:fixed;
}

@media (max-width:480px) {
  .jas-sale-pop {
    left:10px;
    right:10px;
    max-width:300px;
  }
  .jas-sale-pop .jas-sale-pop-content {
    max-width:180px;
  }
}

.jas-sale-pop .jas-sale-pop-img {
  margin-right:10px;
  width:70px;
  float:left;
}

.jas-sale-pop .jas-sale-pop-img img {
  max-height:70px !important;
}

.jas-sale-pop .jas-sale-pop-content {
  width:calc(100% - 80px);
  float:left;
  display:block;
}

.jas-sale-pop h4 {
  color:#333;
  margin:0;
  font-size:1em;
  font-weight:normal;
  margin-bottom:5px;
}

.jas-sale-pop h3 {
  margin:0;
  font-size: 12px;
  max-width:255px;
  font-weight:700;
}

.jas-sale-pop h3 a {
  color:#333 !important;
  margin:0;
  font-size:1em;
  text-transform: none;
}

.jas-sale-pop h3:hover a {
  color:#80bb35 !important;
}

.jas-sale-pop .jas-sale-pop-timeago {
  color:#878787;
  font-size:.85714em;
}

.jas-sale-pop .pe-7s-close {
  right:5px;
  top:0;
  cursor:pointer;
  position:absolute;
  font-family:FontAwesome;
  color:#333;
}

.jas-sale-pop .pe-7s-close:before {
  content:"\f00d";
}

.jas-sale-pop.slideUp {
  opacity:1;
  visibility:visible;
}

@media (min-width:992px) {
  .jas-sale-pop.slideUp {
    bottom:20px;
  }
}

@media (min-width:320px) and (max-width:991px) {
  .jas-sale-pop.slideUp {
    bottom:60px;
  }
}

.jas-sale-pop.middle-xs {
  -webkit-box-align:center;
  -ms-flex-align:center;
}

.jas-sale-pop.flex {
  box-sizing:border-box;
  display:-webkit-box;
  display:-ms-flexbox;
  display:flex;
}
</style>

<!-- END: main -->