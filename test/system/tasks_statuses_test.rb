require "application_system_test_case"

class TasksStatusesTest < ApplicationSystemTestCase
  setup do
    @tasks_status = tasks_statuses(:one)
  end

  test "visiting the index" do
    visit tasks_statuses_url
    assert_selector "h1", text: "Tasks statuses"
  end

  test "should create tasks status" do
    visit tasks_statuses_url
    click_on "New tasks status"

    fill_in "Task status description", with: @tasks_status.task_status_description
    click_on "Create Tasks status"

    assert_text "Tasks status was successfully created"
    click_on "Back"
  end

  test "should update Tasks status" do
    visit tasks_status_url(@tasks_status)
    click_on "Edit this tasks status", match: :first

    fill_in "Task status description", with: @tasks_status.task_status_description
    click_on "Update Tasks status"

    assert_text "Tasks status was successfully updated"
    click_on "Back"
  end

  test "should destroy Tasks status" do
    visit tasks_status_url(@tasks_status)
    click_on "Destroy this tasks status", match: :first

    assert_text "Tasks status was successfully destroyed"
  end
end
