require 'sinatra'
require 'sinatra/reloader'
require 'pry'
# We're going to need to require our class files
require_relative('./lib/task.rb')
require_relative('./lib/todo.rb')

todo_list = TodoList.new("Josh")

get '/tasks' do
	@list = todo_list.tasks_list
	erb(:task_index)
end

get '/new_task' do
	erb(:new_task)
end

get '/complete_task/:id' do
	id = params[:id].to_i
	task_to_complete = todo_list.find_task_by_id(id)
	binding.pry
	task_to_complete.complete!
	todo_list.save

	redirect 'tasks'
end

post '/create_task' do
	content = params[:task]
	new_task = Task.new(content)
	todo_list.add_task(new_task)
	todo_list.save

	redirect '/tasks'
end