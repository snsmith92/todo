class TasksController < ApplicationController

  def index
    render json: Task.all #instead of HTML, load/show JSON representation of tasks in the database. Thus it does not look into the views folder.
  end 
end
