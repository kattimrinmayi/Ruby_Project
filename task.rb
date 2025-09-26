require 'date'

class Task
    attr_accessor :title , :status , :id , :priority 

    def initialize(id , title , priority , status)
        @id = id
        @title = title
        @priority = priority
        @status = status
    end

    #Returning each task instance as a hash:
    def to_hash
        {
            id: @id,
            title: @title,
            priority: @priority,
            status: @status
        }
    end

end
