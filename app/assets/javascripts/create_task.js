$(function(){
  var newTaskForm = $("#new_task");

  var createNewTask = function(){
    formData = $(this).serialize();

    newTask = $.ajax({
      type: "POST",
      url: "/tasks",
      data: formData})

    newTask.done(addTaskToList);

    return false;
  }

  newTaskForm.on("submit", createNewTask);
  var addTaskToList = function(newTaskHtml){
    taskList.append(newTaskHtml);
  }
  var taskList = $(".task");

});
