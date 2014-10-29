class CompletedTaskController < ApplicationController
  def create
    task = Task.find(params[:id])
    task.complete!

    redirect_to index_path
  end

end
