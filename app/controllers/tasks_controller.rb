class TasksController < ApplicationController
  def index 
    @tasks = Task.order(params[:sort])
  end

  def new 
  end 

  def create
      Task.create(title: params[:title])
      redirect_to(tasks_path)
  end

  def destroy
     Task.find(params[:id]).delete
     redirect_to(tasks_path)
  end

end
