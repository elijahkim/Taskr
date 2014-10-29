module ApplicationHelper
  def completed_class(task)
    if task.completed?
      "completed" 
    end
  end
end
