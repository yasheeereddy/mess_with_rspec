module Api
    module V1
      class TasksController < ApplicationController
    before_action :set_task, only: %i[ show edit update destroy ]

    def index
      p logged_in?
      #@tasks = Task.where(user_id: current_user)
      @tasks = Task.all
      render json: @tasks
    end
  
    def show
      render json: @task
    end

    def edit
    end
  
    def create
      @task = Task.new(task_params)
  
      if @task.save
        render json: @task, status: :created, location: @task
      else
        render json: @task.errors, status: :unprocessable_entity
      end
    end
 
    def update
      if @task.update(task_params)
        render json: @task
      else
        render json: @task.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @task.destroy
    end

    private
    def set_task
    @task = Task.find(params[:id])
    end 
    def task_params
    params.require(:task).permit([:name, :status, :category_id, :user_id])
    end
  end
end
end