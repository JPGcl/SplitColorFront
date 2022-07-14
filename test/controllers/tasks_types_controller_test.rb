require "test_helper"

class TasksTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tasks_type = tasks_types(:one)
  end

  test "should get index" do
    get tasks_types_url
    assert_response :success
  end

  test "should get new" do
    get new_tasks_type_url
    assert_response :success
  end

  test "should create tasks_type" do
    assert_difference("TasksType.count") do
      post tasks_types_url, params: { tasks_type: { task_description: @tasks_type.task_description } }
    end

    assert_redirected_to tasks_type_url(TasksType.last)
  end

  test "should show tasks_type" do
    get tasks_type_url(@tasks_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_tasks_type_url(@tasks_type)
    assert_response :success
  end

  test "should update tasks_type" do
    patch tasks_type_url(@tasks_type), params: { tasks_type: { task_description: @tasks_type.task_description } }
    assert_redirected_to tasks_type_url(@tasks_type)
  end

  test "should destroy tasks_type" do
    assert_difference("TasksType.count", -1) do
      delete tasks_type_url(@tasks_type)
    end

    assert_redirected_to tasks_types_url
  end
end
