module ApplicationHelper
    def titlecase team_name
        words = team_name.split(" ")
        titlecased_string = ""
        words.each do |word|
            titlecased_string = titlecased_string + word.capitalize + " "
        end
        titlecased_string
    end
end
