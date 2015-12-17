//console.log("Working");
/*$(document).ready(function(){
    $("#live_score_submit_button").on("click", function(event){
        console.log("in liveScores.js");
        event.preventDefault();

        // Finds the parent form element for getting the url to submit
        var form = $(this).parents('form');
        //console.log(form.serialize());
        // Issuing an synchronous request
        $.ajax({
            url: form.attr('action'),
            type: "POST",
            data: form.serialize(),
            dataType: "json",
            success: function(data){
                // data is the json object rendered
                $("tbody").prepend("<tr><td>" + data.teamone_goals + "</td>" +
                "<td>" + data.teamtwo_goals + "</td>" +
                "<td>" + data.commentary + "</td>" +
                 "</tr>");
                 $("#live_score_teamone_goals").val("");
                 $("#live_score_teamtwo_goals").val("");
                 $("#live_score_commentary").val("");

            }, // End of success callback
            error: function(data){
                alert("Couldn't add. Try again");
            }
        });

    }); // Click listener


});
*/
