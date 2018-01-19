class TasksController < ApplicationController

  def index
    render json: Task.order(:id) #instead of HTML, load/show JSON representation of tasks in the database. Thus it does not look into the views folder.
  end 

  def update
    task = Task.find(params[:id])
    task.update_attributes(task_params)
    render json: task
  end 

  def create
    task = Task.create(task_params)
    render json: task
  end 

  private

  def task_params
    params.require(:task).permit(:done, :title)
  end 
end
