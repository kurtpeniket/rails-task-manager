class TasksController < ApplicationController
  
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.create(task_params)
    redirect_to task_path(@tasks)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end