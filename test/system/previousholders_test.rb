require "application_system_test_case"

class PreviousholdersTest < ApplicationSystemTestCase
  setup do
    @previousholder = previousholders(:one)
  end

  test "visiting the index" do
    visit previousholders_url
    assert_selector "h1", text: "Previousholders"
  end

  test "creating a Previousholder" do
    visit previousholders_url
    click_on "New Previousholder"

    fill_in "From date", with: @previousholder.from_date
    fill_in "Item", with: @previousholder.item_id
    fill_in "Pid", with: @previousholder.pid
    fill_in "Remark", with: @previousholder.remark
    fill_in "To date", with: @previousholder.to_date
    click_on "Create Previousholder"

    assert_text "Previousholder was successfully created"
    click_on "Back"
  end

  test "updating a Previousholder" do
    visit previousholders_url
    click_on "Edit", match: :first

    fill_in "From date", with: @previousholder.from_date
    fill_in "Item", with: @previousholder.item_id
    fill_in "Pid", with: @previousholder.pid
    fill_in "Remark", with: @previousholder.remark
    fill_in "To date", with: @previousholder.to_date
    click_on "Update Previousholder"

    assert_text "Previousholder was successfully updated"
    click_on "Back"
  end

  test "destroying a Previousholder" do
    visit previousholders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Previousholder was successfully destroyed"
  end
end
