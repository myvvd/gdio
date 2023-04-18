var isTouch = Modernizr.touch,
	isMobile = false,//区分移动端与PC端
	mobile = false,//区分手机端与平板
	w_width = 0,
	w_height = 0,
	bannerImgh=638,
	navItem = 0,
	h_height=0,
	roll=0,
	sTop=150,
	produs=0,
	ST = 0;
	
var _mousemove;
var _click;
var _mousedown;
var _mouseup;

//移动端事件和PC事件的切换
if (Modernizr.touch) {
    _mousemove = "touchmove";
    _click = "touchend";
    _mousedown = "touchstart";
    _mouseup = "touchend";
} else {
    _mousemove = "mousemove";
    _click = "click";
    _mousedown = "mousedown";
    _mouseup = "mouseup";
};

function pageBox() {
    w_width = jQuery(window).width();
    w_height = jQuery(window).height();

	//设置移动端参数
    if (w_width <= 1024) {
        isMobile = true;
    } else if (w_width > 1024) {
        isMobile = false;
    };
	//区分手机端和平板
    if (w_width <= 640) {
        mobile = true;
    } else if (w_width > 640) {
        mobile = false;
    };
	if(!isMobile){
	var kscrollTop=0;
	function e() {
		var e = $(window).scrollTop(),
		a = w_height-$(".leval-menu").outerHeight();
		e > a ? $(".levalwr").addClass("fkis") : $(".levalwr").removeClass("fkis");
		if(e > a && $(".levalwr").length>0){
			if (e <=kscrollTop){
				$(".navbox").fadeIn().addClass('cur');
				$(".leval-lists").addClass('on');
				$('.menubtn').addClass('active on');
			}else{
				$(".navbox").fadeOut().addClass('cur');
				$('.menubtn').addClass('on');
				$(".leval-lists").removeClass('on');
				$('.menubtn').removeClass('active');
			}
			kscrollTop=e;
		}else{
			$(".navbox").fadeIn().removeClass('cur');
			$(".menubtn").removeClass('on');
			$(".leval-lists").removeClass('on');
		}
	 }
	$(window).scroll(e),
	e()
	}else{
		$('.menubtn').removeClass('active');
		$(".iphnemenu").removeClass('show');
		$(".menus >li").removeClass('on');
		$(".menu-down").slideUp();
		$(".ptitle,.living,.storys,.values,.values1,.responsible,.life,.coopmiss,.cooperate,.chief,.creative-list,.teams,.teamimg,.inter-info,.informatwr").removeClass('article-block');
	}
	var e=$(".leval-menu").outerHeight();
	$('.pbanner,.teamed').css('height',w_height-e);
	$('.pbanner figure').css('height',w_height-e);
	setImgMax($('.pbanner figure img'), 1920, 834, w_width, w_height-e);
}
pageBox();
jQuery(window).resize(function () {
    pageBox();
});


function getHash(){
	var hash = location.href.split("#")[1];
	if(hash){
		setScroll("#"+hash);
	}
};
window.onload = function () {
    var hash = location.href.split("t=")[1];
    if (hash) {
        jQuery("html,body").animate({ scrollTop: jQuery("#" + hash).offset().top +5 }, 1000, 'easeInOutExpo');
    }
}


function setImgMax(img, imgW, imgH, tW, tH) {
    var tWidth = tW || w_width;
    var tHeight = tH || w_height;
    var coe = imgH / imgW;
    var coe2 = tHeight / tWidth;
    if (coe < coe2) {
        var imgWidth = tHeight / coe;
        img.css({ height: tHeight, width: imgWidth, left: -(imgWidth - tWidth) / 2, top: 0 });
    } else {
        var imgHeight = tWidth * coe;
        img.css({ height: imgHeight, width: tWidth, left: 0, top: -(imgHeight - tHeight) / 2 });
    };
};


