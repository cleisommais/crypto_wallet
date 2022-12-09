module ApplicationHelper
    def date_to_br(date = Date.today)
        date.strftime('%d/%m/%Y')
    end
end
