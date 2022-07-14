require "test_helper"

class TasksConfigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tasks_config = tasks_configs(:one)
  end

  test "should get index" do
    get tasks_configs_url
    assert_response :success
  end

  test "should get new" do
    get new_tasks_config_url
    assert_response :success
  end

  test "should create tasks_config" do
    assert_difference("TasksConfig.count") do
      post tasks_configs_url, params: { tasks_config: { config_id: @tasks_config.config_id, config_value: @tasks_config.config_value, enabled: @tasks_config.enabled, image_id: @tasks_config.image_id, task_id: @tasks_config.task_id } }
    end

    assert_redirected_to tasks_config_url(TasksConfig.last)
  end

  test "should show tasks_config" do
    get tasks_config_url(@tasks_config)
    assert_response :success
  end

  test "should get edit" do
    get edit_tasks_config_url(@tasks_config)
    assert_response :success
  end

  test "should update tasks_config" do
    patch tasks_config_url(@tasks_config), params: { tasks_config: { config_id: @tasks_config.config_id, config_value: @tasks_config.config_value, enabled: @tasks_config.enabled, image_id: @tasks_config.image_id, task_id: @tasks_config.task_id } }
    assert_redirected_to tasks_config_url(@tasks_config)
  end

  test "should destroy tasks_config" do
    assert_difference("TasksConfig.count", -1) do
      delete tasks_config_url(@tasks_config)
    end

    assert_redirected_to tasks_configs_url
  end
end
