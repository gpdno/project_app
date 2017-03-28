class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @project = Project.find(params[:project_id])
    @task = @project.tasks.new
  end

  def edit
    @project = Project.find(params[:project_id])
    @task = @project.tasks.find(params[:id])
  end

  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.build(task_params)

      if @task.save
        redirect_to project_path(@project)
      else
        render :new
      end
  end

  def update

      if @task.update(task_params)
      else
        render :edit
      end

  end


  def destroy
    
    @task.destroy
    respond_to do |format|
      format.html { redirect_to project_path(@project), notice: 'Task was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @project = Project.find(params[:project_id])
      @task = @project.tasks.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:action, :comment, :project_id, :user_id)
    end
end
