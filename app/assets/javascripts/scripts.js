$(document).on("ready page:load",function(e){$('[data-toggle = "tooltip"]').tooltip(),$("#demo123").scrollbox({direction:"h"}),$(window).scroll(function(){$(window).scrollTop()>224&&$("#navbar-links").addClass("fixed-navbar"),$("#navbar-links").addClass("full-width"),$(window).scrollTop()<224&&$("#navbar-links").removeClass("fixed-navbar")}),$(".fancybox").magnificPopup({type:"image",gallery:{enabled:!0}}),$("#news").vTicker({animation:"fade",showItems:5,pause:1500}),$("#image-gallery").masonry({itemSelector:".gallery",columnWidth:200}),$(".sponsors").scrollbox({direction:"h"}),$("#sponsors").flexisel({visibleItems:4,autoPlay:!0,pauseOnHover:!0,autoPlaySpeed:2e3,clone:!0,enableResponsiveBreakpoints:!0,responsiveBreakpoints:{portrait:{changePoint:480,visibleItems:1},landscape:{changePoint:640,visibleItems:2},tablet:{changePoint:768,visibleItems:3}}})});
