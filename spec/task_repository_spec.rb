require 'rspec'
require 'task_repository'

describe "creates class to add, edit, show, and delete tasks" do
  it "allows a user to add a task" do
    task = Task.new
    task.add("Get groceries")
    expect(task.to_do_list).to eq ["Get groceries"]
  end

  it "allows a user to edit a task" do
    task = Task.new
    task.add("Get groceries")
    task.edit("Get groceries", "Go shopping")
    expect(task.to_do_list).to eq ["Go shopping"]
  end

  it "allows a user to delete tasks" do
    task = Task.new
    task.add("Get groceries")
    task.delete("Get groceries")
    expect(task.to_do_list).to eq []
  end
end