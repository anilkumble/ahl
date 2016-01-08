console.log("Working");
console.log($("#live_score_teamone_goals"));
console.log($("#live_score_teamtwo_goals"));
$(document).ready(function(){
    $("#start_broadcast").on("click", function(){
        console.log("in liveScores.js");
        // Issuing an synchronous request
        setInterval(function(){
            $.ajax({
                url: "/live_score.json",
                type: "GET",
                dataType: "json",
                success: function(data){
                    // data is the json returned
                    console.log(data);
                    console.log(data.commentary);
                    $("#live_score_teamone_goals").text(data.teamone_goals);
                    $("#live_score_teamtwo_goals").text(data.teamtwo_goals);
                    $("#commentary").text(data.commentary);
                    console.log("Updated live_scores")
                }, // End of success callback
                error: function(data){
                    console.log("failed to retrieve json");
                }
            });

        },10000);


    }); // Click listener


});
