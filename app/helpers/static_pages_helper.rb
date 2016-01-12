module StaticPagesHelper
    def first_name name
        name.split(" ")[0]
    end
    def short_form name
        name.split(" ")[-1]
    end
end
