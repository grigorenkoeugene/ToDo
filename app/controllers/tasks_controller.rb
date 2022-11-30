class TasksController < ApplicationController
  def index 
    @tasks = Task.all
  end

  def new 
  end 

  def create
    if params[:title] == ""
      p "Очко"
    else
      Task.create(title: params[:title])
      redirect_to(tasks_path)
    end
  end

  def destroy
     Task.find(params[:id]).delete
     redirect_to(tasks_path)
  end

end
