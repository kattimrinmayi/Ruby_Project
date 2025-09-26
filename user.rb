#Creating User class:
class User
    attr_accessor :name, :email

    #Ran by default when a new instance/object for User class is created:
    def initialize(name , email)
        @name = name
        @email = email
        @tasks = {}
        @next_task_id = 1
    end

    def add_tasks(task)
        @tasks[@next_task_id] = task
        @next_task_id += 1
    end

    def list_tasks
        if @tasks.empty?
            puts "#{name} has no tasks."
        else
            puts "#{name}'s tasks:"
            @tasks.each do |id , task|
                task_hash = task.to_hash    
                puts "#{id} -- title: #{task_hash[:title]} -- status: #{task_hash[:status]} -- priority: #{task_hash[:priority]}."
            end
        end
    end


end
