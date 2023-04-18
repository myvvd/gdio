jQuery(function(){
	function initBox() {
		$('.banner').css('height',w_height);
		$('.banner .bannerfix >li').css('height',w_height);
		if(!mobile){
		    setImgMax($('.banner .bannerfix li .bimg'), 1920, 1000, w_width, w_height);
		}else{
		    setImgMax($('.banner .bannerfix li .mimg'), 640, 960, w_width, w_height);
		}
    };
    initBox();
    jQuery(window).resize(function () {
        initBox();
    });
	jQuery(function(){
		var bannersider=jQuery(".banner"); 
			bannersider.flexslider({
			animation: "fade",
			animationLoop: true,
			slideshow: true,
			slideshowSpeed: 5000,
			animationSpeed: 0,
			pauseOnAction: true,
			directionNav:true,
			controlNav:false,
			start: function(slider) {		
			    jQuery('.banner .bannerfix >li').eq(slider.currentSlide).removeClass('out').addClass("in").siblings().removeClass("in out").eq(slider.currentSlide-1).addClass('out');
				jQuery('.banner .bannerfix >li').eq($('.banner .bannerfix >li').length).addClass('out');
				jQuery('.btextlist .btext').eq(slider.currentSlide).addClass("on").siblings().removeClass("on");
			},
			after: function(slider) {
			   jQuery('.banner .bannerfix >li').eq(slider.currentSlide).removeClass('out').addClass("in").siblings().removeClass("in out").eq(slider.currentSlide-1).addClass('out');
			   jQuery('.btextlist .btext').eq(slider.currentSlide).addClass("on").siblings().removeClass("on");
			},
		});
	});
	$(".btextwr span.prev").click(function(){
		$(".banner .flex-direction-nav .flex-prev").trigger('click');
	});
	$(".btextwr span.next").click(function(){
		$(".banner .flex-direction-nav .flex-next").trigger('click');
	});
});