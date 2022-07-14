require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    check "Confirm email" if @user.confirm_email
    fill_in "Confirmation email date", with: @user.confirmation_email_date
    fill_in "Discharge date", with: @user.discharge_date
    fill_in "Email", with: @user.email
    check "Enabled" if @user.enabled
    fill_in "Last name", with: @user.last_name
    fill_in "Login type", with: @user.login_type_id
    fill_in "Name", with: @user.name
    fill_in "Password", with: @user.password
    fill_in "Phone", with: @user.phone
    fill_in "Plan", with: @user.plan_id
    fill_in "Registration date", with: @user.registration_date
    fill_in "User type", with: @user.user_type_id
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    check "Confirm email" if @user.confirm_email
    fill_in "Confirmation email date", with: @user.confirmation_email_date
    fill_in "Discharge date", with: @user.discharge_date
    fill_in "Email", with: @user.email
    check "Enabled" if @user.enabled
    fill_in "Last name", with: @user.last_name
    fill_in "Login type", with: @user.login_type_id
    fill_in "Name", with: @user.name
    fill_in "Password", with: @user.password
    fill_in "Phone", with: @user.phone
    fill_in "Plan", with: @user.plan_id
    fill_in "Registration date", with: @user.registration_date
    fill_in "User type", with: @user.user_type_id
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
