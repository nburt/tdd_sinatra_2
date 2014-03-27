class Task

  def initialize
    @task_list = []
  end

  def to_do_list
    @task_list
  end

  def add(task_to_add)
    @task_list << task_to_add
  end

  def edit(task_to_edit, new_task)
    counter = 0
    @task_list.each do |task|
      if task_to_edit == task
        @task_list[counter] = new_task
      end
      counter += 1
    end
  end

  def delete(task_to_delete)
    counter = 0
    @task_list.each do |task|
      if task_to_delete == task
        @task_list.delete_at(counter)
      end
      counter += 1
    end
  end
end