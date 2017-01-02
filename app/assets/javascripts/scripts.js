$(document).on('ready page:load', function(event) {

  $('[data-toggle = "tooltip"]').tooltip();

  $('#demo123').scrollbox({
    direction: 'h'
  });

  // This is to make the navbar stick after scrolling a few pixels
  $(window).scroll(function(){
    if ($(window).scrollTop() > 100) {
      $('#navbar-links').addClass('fixed-navbar');
      $('#navbar-links').addClass('full-width');
    }
    if ($(window).scrollTop() < 100)
      $('#navbar-links').removeClass('fixed-navbar');
  });

  //For gallery stuff (uses fancybox)
  $(".fancybox").magnificPopup({
      type: 'image',
      gallery: {enabled: true}
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

// Scripts by kumble

  $(document).ready(function(){
      
    // show/hide the commentary   
    $("#commentary_btn").click(function(){
        $("#commentary_box").slideToggle(1000);

    });

  setInterval(updateCommentary,3000);
  function updateCommentary()
  {
      $.getJSON("/new_commentary.json", function(data){

      $('#commentary_box').empty();
      
      $.each(data, function(){
        var each_commentary = '<div id="'+this['id']+'"><div class="row" ><div class="col-sm-2"><b style="black;">&nbsp;&nbsp;R1 - 8 </b></div><div class="col-sm-10 text-left"> '+this['commentary']+' </div></div><br></div>';
        $('#commentary_box').prepend(each_commentary);

      });
    });
  }
    
  setInterval(updateCountDown,1000);
    function updateCountDown()
  {
    
    var reggie = /(\d{2})-(\d{2})-(\d{4}) (\d{2}):(\d{2}):(\d{2})/;
    
    var dateArray = reggie.exec(nextMatchDateTime);
    
    var nextMatchDays = parseInt(dateArray[1]);
    var nextMatchMonths = parseInt(dateArray[2]);
    var nextMatchYears = parseInt(dateArray[3]);
    var nextMatchHours = parseInt(dateArray[4]);
    var nextMatchMinutes = parseInt(dateArray[5]);
    var nextMatchSeconds = parseInt(dateArray[6]);

    var DateTime = new Date();

    var currentDays = parseInt(DateTime.getDate());
    var currentMonths = parseInt(DateTime.getMonth()) + 1;
    var currentYears = parseInt(DateTime.getFullYear());
    var currentHours = parseInt(DateTime.getHours());
    var currentMinutes = parseInt(DateTime.getMinutes());
    var currentSeconds = parseInt(DateTime.getSeconds());

    if(currentMonths == 1 || currentMonths == 3)
      var currentMonths_day = 31;
    else if(currentMonths == 2)
      var currentMonths_day = 28;
    else if(currentMonths == 4)
      var currentMonths_day = 30

    if(nextMatchMonths == 1 || nextMatchMonths ==3)
      var nextMatchMonths_day = 31;
    else if(nextMatchMonths == 2)
      var nextMatchMonths_day = 28;
    else if(nextMatchMonths == 4)
      var nextMatchMonths_day = 30

    var days = (nextMatchMonths_day + nextMatchDays) - (currentMonths_day + currentDays);
    var temp = ((nextMatchHours - currentHours) * 3600) + ((nextMatchMinutes - currentMinutes) * 60) + (nextMatchSeconds - currentSeconds)
    
    if( temp < 0 )
    {
      days = days - 1;
      temp = 86400 + temp // since temp becomes negative;
    }

    var hours = temp / 3600;
    temp = temp % 3600;
    var minutes = temp / 60;
    temp = temp % 60;
    var seconds = temp;

    // getting whole value 
    days = Math.floor(days);
    hours = Math.floor(hours);
    minutes = Math.floor(minutes);
    seconds = Math.floor(seconds);
    
    // Adding first digit as 0 if it is single digit 
    if(days/10 < 1)
      days = "0"+days;

    if(hours/10 < 1)
      hours = "0"+hours;

    if(minutes/10 < 1)
      minutes = "0"+minutes;

    if(seconds/10 < 1)
      seconds = "0"+seconds;

    $('#d').html(days);
    $('#h').html(hours);
    $('#m').html(minutes);
    $('#s').html(seconds);
    
  }

    // Show / hide the required area For Admin Page
    $('.btn-primary').click(function() {
      $('.area').hide(1000);
      $('#'+$(this).attr('data-value')).show(1000);
    });

    // checking the scores changed checkbox
    $('#checkbox').change(function () {
      if(this.checked){
        $('#teamgoal_updating_div').show(1000);
      }
      else{
        $('#teamgoal_updating_div').hide(1000);
      }
      });



  });
  


