require "application_system_test_case"

class TasksConfigsTest < ApplicationSystemTestCase
  setup do
    @tasks_config = tasks_configs(:one)
  end

  test "visiting the index" do
    visit tasks_configs_url
    assert_selector "h1", text: "Tasks configs"
  end

  test "should create tasks config" do
    visit tasks_configs_url
    click_on "New tasks config"

    fill_in "Config", with: @tasks_config.config_id
    fill_in "Config value", with: @tasks_config.config_value
    check "Enabled" if @tasks_config.enabled
    fill_in "Image", with: @tasks_config.image_id
    fill_in "Task", with: @tasks_config.task_id
    click_on "Create Tasks config"

    assert_text "Tasks config was successfully created"
    click_on "Back"
  end

  test "should update Tasks config" do
    visit tasks_config_url(@tasks_config)
    click_on "Edit this tasks config", match: :first

    fill_in "Config", with: @tasks_config.config_id
    fill_in "Config value", with: @tasks_config.config_value
    check "Enabled" if @tasks_config.enabled
    fill_in "Image", with: @tasks_config.image_id
    fill_in "Task", with: @tasks_config.task_id
    click_on "Update Tasks config"

    assert_text "Tasks config was successfully updated"
    click_on "Back"
  end

  test "should destroy Tasks config" do
    visit tasks_config_url(@tasks_config)
    click_on "Destroy this tasks config", match: :first

    assert_text "Tasks config was successfully destroyed"
  end
end
