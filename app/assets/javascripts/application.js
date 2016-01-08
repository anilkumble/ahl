// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){

        $('#demo123').scrollbox({
            direction: 'h'
        });

    // This is to make the navbar stick after scrolling a few pixels
    $(window).scroll(function(){
        if ($(window).scrollTop() > 224)
            $('#navbar-links').addClass('fixed-navbar');
            $('#navbar-links').addClass('full-width');
        if ($(window).scrollTop() < 224)
            $('#navbar-links').removeClass('fixed-navbar');
    });


    //For gallery stuff (uses fancybox)
    $(".fancybox").magnificPopup({
        type: 'image',
        gallery: {enabled: true}
    });


    // this is for the news ticker
    $("#news").vTicker({
        animation: 'fade',
        showItems: 5,
        pause: 1500
    });


    // Jquery masonry
    $("#image-gallery").masonry({
        itemSelector: '.gallery',
        columnWidth: 200
    })

    // Jquery scrollbox for sponsors
    $(".sponsors").scrollbox({
        direction: 'h'

    });

});
$(window).load(function(){
    $("#sponsors").flexisel({
        visibleItems: 4,
        autoPlay: true,
        pauseOnHover: true,
        autoPlaySpeed: 2000,
        clone: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: {
      portrait: {
        changePoint:480,
        visibleItems: 1
      },
      landscape: {
        changePoint:640,
        visibleItems: 2
      },
      tablet: {
        changePoint:768,
        visibleItems: 3
      }
    }
    });
})
