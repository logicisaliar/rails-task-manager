class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(user_params)
    @task.save
    redirect_to "/tasks"
  end

  def edit
  end


  def update
    @task.update(user_params)
    redirect_to "/tasks"
  end

  def destroy
    @task.destroy
    redirect_to "/tasks"
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def user_params
    params.require(:task).permit(:details, :title, :completed)
  end
end