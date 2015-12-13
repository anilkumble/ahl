module ApplicationHelper
    def titlecase team_name
        words = team_name.split(" ")
        titlecased_string = ""
        words.each do |word|
            titlecased_string = titlecased_string + word.capitalize + " "
        end
        titlecased_string
    end

    # Used to display the recent performance
    def team_status(match, team)
        #
        if match.result == 0
            return "D"
        end
        if team.id == match.team1_id
            if match.result == 1
                return "W"
            else
                return "L"
            end

        else
            if match.result == -1
                return "W"
            else
                return "L"
            end
        end
    end
end
