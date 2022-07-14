require "application_system_test_case"

class TasksTypesTest < ApplicationSystemTestCase
  setup do
    @tasks_type = tasks_types(:one)
  end

  test "visiting the index" do
    visit tasks_types_url
    assert_selector "h1", text: "Tasks types"
  end

  test "should create tasks type" do
    visit tasks_types_url
    click_on "New tasks type"

    fill_in "Task description", with: @tasks_type.task_description
    click_on "Create Tasks type"

    assert_text "Tasks type was successfully created"
    click_on "Back"
  end

  test "should update Tasks type" do
    visit tasks_type_url(@tasks_type)
    click_on "Edit this tasks type", match: :first

    fill_in "Task description", with: @tasks_type.task_description
    click_on "Update Tasks type"

    assert_text "Tasks type was successfully updated"
    click_on "Back"
  end

  test "should destroy Tasks type" do
    visit tasks_type_url(@tasks_type)
    click_on "Destroy this tasks type", match: :first

    assert_text "Tasks type was successfully destroyed"
  end
end
