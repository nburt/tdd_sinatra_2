class Task

  def initialize
    @task_list = []
  end

  def add(task_to_add)
    @task_list << task_to_add
  end

  def to_do_list
    @task_list
  end
end