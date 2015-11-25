module PlayersHelper
    def first_name(name)
        first_name = name.split()[0]
        if first_name.length() < 3
            first_name = name.split()[1]
        end
        return first_name
    end
end
