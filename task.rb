require 'date'

class Task
    attr_accessor :title , :status , :id , :priority , :due_date

    def initialize(id , title , priority , status , due_date)
        @id = id
        @title = title
        @priority = priority
        @status = status
        @due_date = Date.parse(due_date)
    end

    #Returning each task instance as a hash:
    def to_hash
        {
            id: @id,
            title: @title,
            priority: @priority,
            status: @status,
            due_date: @due_date
        }
    end

    def overdue?
        @due_date < Date.today && @status != "Done"
    end

end
