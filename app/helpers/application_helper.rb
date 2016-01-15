module ApplicationHelper
    #For titlecasing the team name
    def titlecase team_name
        words = team_name.split(" ")
        titlecased_string = ""
        words.each do |word|
            titlecased_string = titlecased_string + word.capitalize + " "
        end
        titlecased_string
    end

    #For position of team in 2015
    def position team_id
        case team_id
            when 1
                return 2
            when 2
                return 1
            when 3
                return 3
            when 4
                return 4
            when 5
                return 6
            when 6
                return 5
        end
    end

    # Used to display the recent performance
    def team_status(match, team)
        if match.result == 0
            return "D"
        else
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


end
