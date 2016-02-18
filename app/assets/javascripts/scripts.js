$(document).on('ready page:load', function(event) {

        $('[data-toggle = "tooltip"]').tooltip();

        $('#demo123').scrollbox({
            direction: 'h'
        });

    // This is to make the navbar stick after scrolling a few pixels
    $(window).scroll(function(){
        if ($(window).scrollTop() > 100)
            $('#navbar-links').addClass('fixed-navbar');
            $('#navbar-links').addClass('full-width');
        if ($(window).scrollTop() < 100)
            $('#navbar-links').removeClass('fixed-navbar');
    });


    //For gallery stuff (uses fancybox)
    $(".fancybox").magnificPopup({
        type: 'image',
        gallery: {enabled: true}
    });

    // Jquery masonry
    $("#image-gallery").masonry({
        itemSelector: '.gallery',
        columnWidth: 200
    });

    $("#gallery-first").masonry({
        itemSelector: '.gallery-photo',
        columnWidth: 200,
        isFitWidth: true
    });

    $("#sponsors").flexisel({
        visibleItems: 4,
        autoPlay: true,
        pauseOnHover: true,
        autoPlaySpeed: 3000,
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



    //This is for updating live scores
    //Find the match id from the link in the homepage
    //Make an AJAX call to check whether the match is currently running
    //If its running, issue an AJAX request to find the latest live_score of the match every two minutes . And everytime, check whether the match is running
    //Retrieve the match json object and update the scores accordingly
    console.log($(".match-button")[0].href);
    var baseUrl = $(".match-button")[0].href;
    var jsonUrl = baseUrl + ".json";
    console.log(jsonUrl);
    // Initial request to find whether the match is running
    $.ajax({url: jsonUrl,
        type: "GET",
        dataType: "json",
        success: function(data){

            if(data.running && data.live_score != null){
                console.log(data.live_score.teamone_goals);
                console.log(data.live_score.teamtwo_goals);
                console.log("Go fetch liveScores");
                broadcastLiveScores(jsonUrl);
            }
            else{
                console.log("Go home");
            }
        }
    });


    // This function is responsible for displaying the livescores every two minutes
    function broadcastLiveScores(jsonUrl){
        var intervalId = setInterval(function(){
            console.log(intervalId);
            $.ajax({
                url: jsonUrl,
                dataType: 'json',
                type: 'GET',
                success: function(data){
                    //check if the match is running
                    //console.log(data);
                    if(data.running){
                        //Update the scoreboard
                        console.log("Updating");
                        $("#teamone_score").text(data.live_score.teamone_goals);
                        $("#teamtwo_score").text(data.live_score.teamtwo_goals);
                        $("#commentary").text(data.live_score.commentary);
                    }
                    //Stop the event if the match has ended
                    else{
                        console.log("Match ended");
                        clearInterval(intervalId);
                    }

                } //success object
            }); //ajax
        }, 20000);

    }

});
