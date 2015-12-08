//console.log("Working");
$(document).ready(function(){
    $("#live_score_submit_button").on("click", function(event){
        console.log("in liveScores.js");
        event.preventDefault();

        var form = $(this).parents('form');
        //console.log(form);
        $.ajax({
            url: form.attr('action'),
            type: "POST",
            data: form.serialize(),
            dataType: "json",
            success: function(data){
                console.log(data.teamone_goals);
                $("#first_team_score").html(data.teamone_goals);
                $("#second_team_score").html(data.teamtwo_goals);
                $("#commentary").html(data.commentary);
            } // End of success callback
        });
        alert("Livescore added");

    }); // Click listener


});
