require_relative 'sinatra_todo'

describe Task do
	before :each do 
		@task = Task.new("Buy the milk")
	end

	describe "#complete?" do
    	it "checks if the task is completed or not.Initial value must be false" do
      		expect(@task.complete?).to eq(false)
    	end

  	end

  	describe "#complete!" do
  		it "change the state of the task to completed." do
  			expect(@task.complete!).to eq(true)
  		end

  	end

  	describe "#make_incomplete!" do
  		it 'change the state of the task to incompleted.' do
  			expect(@task.make_incomplete!).to eq(false)
  			
  		end
  	end

end


describe TodoList do
	before :each do
		@task = Task.new("Buy the milk")
		@todo_list = TodoList.new
	end

	describe "#add_task" do
		it 'add task object to todo list' do
			list=@todo_list.add_task(@task)
			expect(list.tasks[0]).to eq(@task)
		end
	end


end
