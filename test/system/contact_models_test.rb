require "application_system_test_case"

class ContactModelsTest < ApplicationSystemTestCase
  setup do
    @contact_model = contact_models(:one)
  end

  test "visiting the index" do
    visit contact_models_url
    assert_selector "h1", text: "Contact models"
  end

  test "should create contact model" do
    visit contact_models_url
    click_on "New contact model"

    fill_in "Email", with: @contact_model.email
    fill_in "Message", with: @contact_model.message
    fill_in "Name", with: @contact_model.name
    click_on "Create Contact model"

    assert_text "Contact model was successfully created"
    click_on "Back"
  end

  test "should update Contact model" do
    visit contact_model_url(@contact_model)
    click_on "Edit this contact model", match: :first

    fill_in "Email", with: @contact_model.email
    fill_in "Message", with: @contact_model.message
    fill_in "Name", with: @contact_model.name
    click_on "Update Contact model"

    assert_text "Contact model was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact model" do
    visit contact_model_url(@contact_model)
    click_on "Destroy this contact model", match: :first

    assert_text "Contact model was successfully destroyed"
  end
end
