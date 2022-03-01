class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    # On récupère tout les tasks
    @tasks = Task.all
  end

  def show
    # On récupère 1 seul task
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params_task)
    @task.save
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update(params_task)
    @task.save
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  private

  def params_task
    params.require(:task).permit(:title, :details, :completed)
  end
end
