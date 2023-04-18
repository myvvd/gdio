$(function(){
var wh=$(window).height()
var ww=$(window).width()

	$(".back-top").click(function(){
		$("html,body").stop().animate({scrollTop: 0}, 800);
	});

	$(window).scroll(function(){
		if($(window).scrollTop() < 300){
			$(".side-btn a span").hide();
			$(".back-top").hide();
		}else{
			$(".side-btn a span").show();
			$(".back-top").show();
		}
		
	});

	
	//头部搜索
	// Handle click on toggle search button
  $('#toggle-search').click(function() {
	  $('#search-form, #toggle-search').toggleClass('open');
	  return false;
  });
  // Handle click on search submit button
  $('#search-form input[type=submit]').click(function() {
	  $('#search-form, #toggle-search').toggleClass('open');
	  return true;
  });
  // Clicking outside the search form closes it
  $(document).click(function(event) {
	  var target = $(event.target);
	  if (!target.is('#toggle-search') && !target.closest('#search-form').size()) {
		  $('#search-form, #toggle-search').removeClass('open');
	  }
  });

	/*文字渐显*/ 
  var $pbanner=jQuery(".position");
    if($pbanner.length>=1){
	    setTimeout(function() {
	      $pbanner.addClass('trans-1');
		  $('.position .transX').addClass('transShow');
	   	  $('.position .transX2').addClass('transShow');
		  $('.position .transY').addClass('transShow');
	    }, 200);
    };


})


