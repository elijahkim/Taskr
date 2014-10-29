class TasksController < ApplicationController
  def index
    @newtask = Task.new
    @tasks = current_user.tasks
  end

  def create
    @task = current_user.tasks.new(task_params)
    @task.save

    render @task
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to index_path
  end

  private

  def task_params
    params.require(:task).permit(:content)
  end
end
