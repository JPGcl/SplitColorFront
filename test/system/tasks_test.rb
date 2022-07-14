require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  setup do
    @task = tasks(:one)
  end

  test "visiting the index" do
    visit tasks_url
    assert_selector "h1", text: "Tasks"
  end

  test "should create task" do
    visit tasks_url
    click_on "New task"

    fill_in "Comment", with: @task.comment_id
    fill_in "Creation date", with: @task.creation_date
    fill_in "End date", with: @task.end_date
    fill_in "Image", with: @task.image_id
    fill_in "Process type", with: @task.process_type_id
    fill_in "State date", with: @task.state_date
    fill_in "State process", with: @task.state_process_id
    fill_in "User", with: @task.user_id
    click_on "Create Task"

    assert_text "Task was successfully created"
    click_on "Back"
  end

  test "should update Task" do
    visit task_url(@task)
    click_on "Edit this task", match: :first

    fill_in "Comment", with: @task.comment_id
    fill_in "Creation date", with: @task.creation_date
    fill_in "End date", with: @task.end_date
    fill_in "Image", with: @task.image_id
    fill_in "Process type", with: @task.process_type_id
    fill_in "State date", with: @task.state_date
    fill_in "State process", with: @task.state_process_id
    fill_in "User", with: @task.user_id
    click_on "Update Task"

    assert_text "Task was successfully updated"
    click_on "Back"
  end

  test "should destroy Task" do
    visit task_url(@task)
    click_on "Destroy this task", match: :first

    assert_text "Task was successfully destroyed"
  end
end
