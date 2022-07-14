require "test_helper"

class TasksStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tasks_status = tasks_statuses(:one)
  end

  test "should get index" do
    get tasks_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_tasks_status_url
    assert_response :success
  end

  test "should create tasks_status" do
    assert_difference("TasksStatus.count") do
      post tasks_statuses_url, params: { tasks_status: { task_status_description: @tasks_status.task_status_description } }
    end

    assert_redirected_to tasks_status_url(TasksStatus.last)
  end

  test "should show tasks_status" do
    get tasks_status_url(@tasks_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_tasks_status_url(@tasks_status)
    assert_response :success
  end

  test "should update tasks_status" do
    patch tasks_status_url(@tasks_status), params: { tasks_status: { task_status_description: @tasks_status.task_status_description } }
    assert_redirected_to tasks_status_url(@tasks_status)
  end

  test "should destroy tasks_status" do
    assert_difference("TasksStatus.count", -1) do
      delete tasks_status_url(@tasks_status)
    end

    assert_redirected_to tasks_statuses_url
  end
end
