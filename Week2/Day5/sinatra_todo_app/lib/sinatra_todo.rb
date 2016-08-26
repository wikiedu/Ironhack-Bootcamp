require 'yaml/store'

class Task
    attr_reader :content, :id ,:completed, :created_at, :updated_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed=false
        @created_at=Time.now
        @updated_at=nil
    end

    def complete?
    	@completed
    end

    def complete!
    	@completed=true
    end

    def make_incomplete!
    	@completed=false	
    end

    def update_content!(content)
    	@content=content
    end

    def updated_at
    	@updated_at=Time.now
    end

end


class TodoList
    attr_reader :tasks, :user
    def initialize(user)
    	@todo_store = YAML::Store.new("../public/tasks.yml")
    	@user=user
        @tasks = []
    end

    def add_task(task)
    	@tasks.push(task)
    end

    def delete_task(id_task)
    	@tasks.delete_if{|task| task.id ==id_task} 
    end

    def find_task_by_id(id_task)
    	@tasks.select{|task| task.id == id_task}[0]
    end

    def sort_by_created(type)
    	if type=="ASC"
    		sorted = @tasks.sort { | task1, task2 | task1.created_at <=> task2.created_at }
    	elsif type=="DESC"
    		sorted = @tasks.sort { | task2, task1 | task1.created_at <=> task2.created_at }
    	end
    		
    end

    def save
  		@todo_store.transaction do 
      	@todo_store[@user] = @tasks
 	 end
    end
end



# task = Task.new("Buy the dog")
# puts task.id 
# task2 = Task.new("Walk the milk")
# puts task2.content 

# task.update_content!("Buy the milk")
# task2.update_content!("Walk the dog")
# puts task.content 

# puts task2.content 



# list=TodoList.new
# list.add_task(task)
# list.add_task(task2)
# list.delete_task(1)
# p list

# todo_list = TodoList.new
# todo_list.add_task(Task.new("Walk the dog"))
# todo_list.add_task(Task.new("Buy the milk"))
# orded_task = todo_list.sort_by_created
# task = todo_list.find_task_by_id(1)
# puts orded_task
# # Walk the dog


todo_list = TodoList.new("Josh")
task = Task.new("Walk the dog")
task2 = Task.new("Buy the milk")
task3 = Task.new("Make my todo list into a web app")
todo_list.add_task(task)
todo_list.add_task(task2)
todo_list.add_task(task3)
todo_list.save




